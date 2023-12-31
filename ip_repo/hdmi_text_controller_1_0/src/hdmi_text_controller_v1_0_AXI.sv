`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ECE-Illinois
// Engineer: Zuofu Cheng
// 
// Create Date: 06/08/2023 12:21:05 PM
// Design Name: 
// Module Name: hdmi_text_controller_v1_0_AXI
// Project Name: ECE 385 - hdmi_text_controller
// Target Devices: 
// Tool Versions: 
// Description: 
// This is a modified version of the Vivado template for an AXI4-Lite peripheral,
// rewritten into SystemVerilog for use with ECE 385.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`timescale 1 ns / 1 ps

module hdmi_text_controller_v1_0_AXI #
(
    // Users to add parameters here

    // User parameters ends
    // Do not modify the parameters beyond this line

    // Width of S_AXI data bus
    parameter integer C_S_AXI_DATA_WIDTH	= 32,
    // Width of S_AXI address bus
    parameter integer C_S_AXI_ADDR_WIDTH	= 14 //7.1: was 12 // was 11
)
(
    // Users to add ports here
    input logic [9:0] DRAWX,
    input logic [9:0] DRAWY,
    output logic [10:0] CHAR_ADDR,
    output logic IVN,
   
    output logic [23:0] COLORS,
    // User ports ends
    // Do not modify the ports beyond this line

    // Global Clock Signal
    input logic  S_AXI_ACLK,
    // Global Reset Signal. This Signal is Active LOW
    input logic  S_AXI_ARESETN,
    // Write address (issued by master, acceped by Slave)
    input logic [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
    // Write channel Protection type. This signal indicates the
        // privilege and security level of the transaction, and whether
        // the transaction is a data access or an instruction access.
    input logic [2 : 0] S_AXI_AWPROT,
    // Write address valid. This signal indicates that the master signaling
        // valid write address and control information.
    input logic  S_AXI_AWVALID,
    // Write address ready. This signal indicates that the slave is ready
        // to accept an address and associated control signals.
    output logic  S_AXI_AWREADY,
    // Write data (issued by master, acceped by Slave) 
    input logic [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
    // Write strobes. This signal indicates which byte lanes hold
        // valid data. There is one write strobe bit for each eight
        // bits of the write data bus.    
    input logic [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
    // Write valid. This signal indicates that valid write
        // data and strobes are available.
    input logic  S_AXI_WVALID,
    // Write ready. This signal indicates that the slave
        // can accept the write data.
    output logic  S_AXI_WREADY,
    // Write response. This signal indicates the status
        // of the write transaction.
    output logic [1 : 0] S_AXI_BRESP,
    // Write response valid. This signal indicates that the channel
        // is signaling a valid write response.
    output logic  S_AXI_BVALID,
    // Response ready. This signal indicates that the master
        // can accept a write response.
    input logic  S_AXI_BREADY,
    // Read address (issued by master, acceped by Slave)
    input logic [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
    // Protection type. This signal indicates the privilege
        // and security level of the transaction, and whether the
        // transaction is a data access or an instruction access.
    input logic [2 : 0] S_AXI_ARPROT,
    // Read address valid. This signal indicates that the channel
        // is signaling valid read address and control information.
    input logic  S_AXI_ARVALID,
    // Read address ready. This signal indicates that the slave is
        // ready to accept an address and associated control signals.
    output logic  S_AXI_ARREADY,
    // Read data (issued by slave)
    output logic [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
    // Read response. This signal indicates the status of the
        // read transfer.
    output logic [1 : 0] S_AXI_RRESP,
    // Read valid. This signal indicates that the channel is
        // signaling the required read data.
    output logic  S_AXI_RVALID,
    // Read ready. This signal indicates that the master can
        // accept the read data and response information.
    input logic  S_AXI_RREADY,
    
    input logic clk_100,
    
    
    output logic [15:0] palette_fgc,
    
    output logic [15:0] palette_bgc
);

// AXI4LITE signals
logic  [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
logic  axi_awready;
logic  axi_wready;
logic  [1 : 0] 	axi_bresp;
logic  axi_bvalid;
logic  [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
logic  axi_arready;
logic  [C_S_AXI_DATA_WIDTH-1 : 0] 	axi_rdata;
logic  [1 : 0] 	axi_rresp;
logic  	axi_rvalid;


// Example-specific design signals
// local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
// ADDR_LSB is used for addressing 32/64 bit registers/memories
// ADDR_LSB = 2 for 32 bits (n downto 2)
// ADDR_LSB = 3 for 64 bits (n downto 3)
localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
localparam integer OPT_MEM_ADDR_BITS = 1;
//----------------------------------------------
//-- Signals for user logic register space example
//------------------------------------------------
//-- Number of Slave Registers 4
//logic [C_S_AXI_DATA_WIDTH-1:0]	slv_reg0;
//logic [C_S_AXI_DATA_WIDTH-1:0]	slv_reg1;
//logic [C_S_AXI_DATA_WIDTH-1:0]	slv_reg2;
//logic [C_S_AXI_DATA_WIDTH-1:0]	slv_reg3;
//
//Note: the provided Verilog template had the registered declared as above, but in order to give 
//students a hint we have replaced the 4 individual registers with an unpacked array of packed logic. 
//Note that you as the student will still need to extend this to the full register set needed for the lab.
//logic [C_S_AXI_DATA_WIDTH-1:0] slv_regs[601]; // was 4, should be 601
logic	 slv_reg_rden;
logic	 slv_reg_wren;
logic [C_S_AXI_DATA_WIDTH-1:0]	 reg_data_out;
integer	 byte_index;
logic	 aw_en;
logic [C_S_AXI_ADDR_WIDTH-1 : 0] read_write_axi_addr;
logic [31:0] out_chan_b;

logic [15:0] palettes[16]; // was 4, should be 601
// I/O Connections assignments

assign S_AXI_AWREADY	= axi_awready;
assign S_AXI_WREADY	= axi_wready;
assign S_AXI_BRESP	= axi_bresp;
assign S_AXI_BVALID	= axi_bvalid;
assign S_AXI_ARREADY	= axi_arready;
assign S_AXI_RDATA	= axi_rdata;
assign S_AXI_RRESP	= axi_rresp;
assign S_AXI_RVALID	= axi_rvalid;
// Implement axi_awready generation
// axi_awready is asserted for one S_AXI_ACLK clock cycle when both
// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
// de-asserted when reset is low.

always_ff @( posedge S_AXI_ACLK )
begin
  if ( S_AXI_ARESETN == 1'b0 )
    begin
      axi_awready <= 1'b0;
      aw_en <= 1'b1;
    end 
  else
    begin    
      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
        begin
          // slave is ready to accept write address when 
          // there is a valid write address and write data
          // on the write address and data bus. This design 
          // expects no outstanding transactions. 
          axi_awready <= 1'b1;
          aw_en <= 1'b0;
        end
        else if (S_AXI_BREADY && axi_bvalid)
            begin
              aw_en <= 1'b1;
              axi_awready <= 1'b0;
            end
      else           
        begin
          axi_awready <= 1'b0;
        end
    end 
end       

// Implement axi_awaddr latching
// This process is used to latch the address when both 
// S_AXI_AWVALID and S_AXI_WVALID are valid. 

always_ff @( posedge S_AXI_ACLK )
begin
  if ( S_AXI_ARESETN == 1'b0 )
    begin
      axi_awaddr <= 0;
    end 
  else
    begin    
      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
        begin
          // Write Address latching 
          axi_awaddr <= S_AXI_AWADDR;
        end
    end 
end       

// Implement axi_wready generation
// axi_wready is asserted for one S_AXI_ACLK clock cycle when both
// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
// de-asserted when reset is low. 

always_ff @( posedge S_AXI_ACLK )
begin
  if ( S_AXI_ARESETN == 1'b0 )
    begin
      axi_wready <= 1'b0;
    end 
  else
    begin    
      if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID && aw_en )
        begin
          // slave is ready to accept write data when 
          // there is a valid write address and write data
          // on the write address and data bus. This design 
          // expects no outstanding transactions. 
          axi_wready <= 1'b1;
        end
      else
        begin
          axi_wready <= 1'b0;
        end
    end 
end       

// Implement memory mapped register select and write logic generation
// The write data is accepted and written to memory mapped registers when
// axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
// select byte enables of slave registers while writing.
// These registers are cleared when reset (active low) is applied.
// Slave register write enable is asserted when valid address and data are available
// and the slave is ready to accept the write address and write data.
assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;

always_ff @( posedge S_AXI_ACLK )
begin
  if ( S_AXI_ARESETN == 1'b0 )
    begin
        for (integer i = 0; i < 2**C_S_AXI_ADDR_WIDTH; i++)
        begin
          // slv_regs[i] <= 0;
        end
    end
  else begin
    if (slv_reg_wren)
      begin
        for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
          if ( S_AXI_WSTRB[byte_index] == 1 ) begin
            // Respective byte enables are asserted as per write strobes, note the use of the index part select operator
			// '+:', you will need to understand how this operator works.
            //slv_regs[axi_awaddr[11:ADDR_LSB]][(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8]; //[ADDR_LSB+OPT_MEM_ADDR_BITS
          end  
      end
  end
end    

// Implement write response logic generation
// The write response and response valid signals are asserted by the slave 
// when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
// This marks the acceptance of address and indicates the status of 
// write transaction.

always_ff @( posedge S_AXI_ACLK )
begin
  if ( S_AXI_ARESETN == 1'b0 )
    begin
      axi_bvalid  <= 0;
      axi_bresp   <= 2'b0;
    end 
  else
    begin    
      if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID)
        begin
          // indicates a valid write response is available
          axi_bvalid <= 1'b1;
          axi_bresp  <= 2'b0; // 'OKAY' response 
        end                   // work error responses in future
      else
        begin
          if (S_AXI_BREADY && axi_bvalid) 
            //check if bready is asserted while bvalid is high) 
            //(there is a possibility that bready is always asserted high)   
            begin
              axi_bvalid <= 1'b0; 
            end  
        end
    end
end   

// Implement axi_arready generation
// axi_arready is asserted for one S_AXI_ACLK clock cycle when
// S_AXI_ARVALID is asserted. axi_awready is 
// de-asserted when reset (active low) is asserted. 
// The read address is also latched when S_AXI_ARVALID is 
// asserted. axi_araddr is reset to zero on reset assertion.

always_ff @( posedge S_AXI_ACLK )
begin
  if ( S_AXI_ARESETN == 1'b0 )
    begin
      axi_arready <= 1'b0;
      axi_araddr  <= 32'b0;
    end 
  else
    begin    
      if (~axi_arready && S_AXI_ARVALID)
        begin
          // indicates that the slave has acceped the valid read address
          axi_arready <= 1'b1;
          // Read address latching
          axi_araddr  <= S_AXI_ARADDR;
        end
      else
        begin
          axi_arready <= 1'b0;
        end
    end 
end       

// Implement axi_arvalid generation
// axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
// S_AXI_ARVALID and axi_arready are asserted. The slave registers 
// data are available on the axi_rdata bus at this instance. The 
// assertion of axi_rvalid marks the validity of read data on the 
// bus and axi_rresp indicates the status of read transaction.axi_rvalid 
// is deasserted on reset (active low). axi_rresp and axi_rdata are 
// cleared to zero on reset (active low).  
always_ff @( posedge S_AXI_ACLK )
begin
  if ( S_AXI_ARESETN == 1'b0 )
    begin
      axi_rvalid <= 0;
      axi_rresp  <= 0;
    end 
  else
    begin    
      if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)
        begin
          // Valid read data is available at the read data bus
          axi_rvalid <= 1'b1;
          axi_rresp  <= 2'b0; // 'OKAY' response
        end   
      else if (axi_rvalid && S_AXI_RREADY)
        begin
          // Read data is accepted by the master
          axi_rvalid <= 1'b0;
        end                
    end
end    

// Implement memory mapped register select and read logic generation
// Slave register read enable is asserted when valid address is available
// and the slave is ready to accept the read address.
assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;
always_comb
begin
      // Address decoding for reading registers
     //reg_data_out <= slv_regs[axi_araddr[11:ADDR_LSB]]; // ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB
end

 //Output register or memory read data
always_ff @( posedge S_AXI_ACLK )
begin
  if ( S_AXI_ARESETN == 1'b0 )
    begin
      axi_rdata  <= 0;
    end 
  else
    begin    
      // When there is a valid read address (S_AXI_ARVALID) with 
      // acceptance of read address by the slave (axi_arready), 
      // output the read dada 
      if (slv_reg_rden)
        begin
          axi_rdata <= reg_data_out;     // register read data
        end   
    end
end    


        logic [9:0] text_grid_x;
        logic [9:0] text_grid_y;
        logic [11:0] char_num;
        logic reg_num;
        logic quarter_num;
        
        logic [31:0] data_out, data_out_2;
        
        logic [15:0] cut_data_out; // 7.1: was 7:0
        logic [10:0] temp_data_out;
        logic color_inverter;
        
        logic [23:0] temp_colors;
        
        //7.2 vars below
        
        logic [6:0] char_code;
        logic [7:0] color_indices;
        
        logic [15:0] pfgc;
        logic [15:0] pbgc;
        
//always_ff @( posedge S_AXI_ACLK )
always_comb
    begin
// Add user logic here

//        if ( slv_reg_wren == 1'b1 ) begin
//        end
        // made all assignments blocking
        text_grid_x = DRAWX >> 3; // was >> 3
        text_grid_y = DRAWY >> 4;
    
        char_num = ( text_grid_y * 80 + text_grid_x );
        
        //data_out = slv_regs[char_num[11:2]];
        cut_data_out = out_chan_b[(char_num[0:0]*16) +: 16]; // 7.1: was char_num[1:0] * 8 +: 8
        
        color_inverter = cut_data_out[15];
        
        char_code = cut_data_out[14:8];
        //color_indices = cut_data_out[7:0];
        
        pfgc = palettes[cut_data_out[7:4]];
        pbgc = palettes[cut_data_out[3:0]];
        
        temp_data_out = (char_code << 4) + DRAWY[3:0]; 
        
        // pulling from control register
        //data_out_2 = slv_regs[600];
        //temp_colors = data_out_2[24:1];
    end
    
    assign CHAR_ADDR = temp_data_out;
    assign IVN = color_inverter;
    
    //assign COLORS = temp_colors;
 
// User logic ends

logic [3:0] wstrb_out;
//mux instantiation 
//mux_axi_read_write mux(
//               .axi_awaddr(axi_awaddr),
//               .axi_araddr(axi_araddr),
//               .slv_reg_wren(slv_reg_wren),
//               .wstrb(S_AXI_WSTRB),
//               .wstrb_out(wstrb_out),
//               .read_write_axi_addr(read_write_axi_addr)
//                    );
//bram instantiation
//logic [31:0] write_axi_data;

assign palette_fgc = pfgc;
assign palette_bgc = pbgc;

blk_mem_gen_0 bram(
            .addra(read_write_axi_addr[13:2]), //7.1: was 11:2 //size 16, variable calculated read or write dependent on read input
            .clka(S_AXI_ACLK),
            .dina(S_AXI_WDATA), //size 32, some read input
            .douta(reg_data_out), //size 32, some write input axi_rdata
            .ena(1'b1),
            .wea(wstrb_out), //write enable
            .addrb(char_num[11:1]), //7.1 was 11:2 //size 16, mem addr 11:2
            .clkb(S_AXI_ACLK), // was clk_100
            .dinb('0),
            .doutb(out_chan_b), // variable to color mapper
            .web(1'b0)
                    );

always_comb
begin
//    if ( S_AXI_ARESETN == 1'b1 ) begin
//        write_axi_data = S_AXI_WDATA;
//    end
//    else begin
//        write_axi_data = 32'b0;
//    end
    if( slv_reg_wren == 1'b1 ) begin
        read_write_axi_addr = S_AXI_AWADDR;
    end
    else begin
        read_write_axi_addr = S_AXI_ARADDR;
    end
    if ( slv_reg_wren == 1'b1 && read_write_axi_addr[13:2] <= 12'h4AF ) begin // changed from 11:2, brok everything
        wstrb_out = S_AXI_WSTRB;              
    end
    else begin
        wstrb_out = 4'b0000;
    end      
end

always_ff @( posedge S_AXI_ACLK ) 
begin 
      if ( read_write_axi_addr[13] == 1'b1 && slv_reg_wren == 1'b1  ) begin //&& slv_reg_wren == 1'b1 
       if ( S_AXI_WSTRB[3] == 1'b1 ) begin
            palettes[{read_write_axi_addr[4:2], S_AXI_WSTRB[3]}] <= S_AXI_WDATA[31:16];
            //palettes[{read_write_axi_addr[5:2], S_AXI_WSTRB[3]} ][(byte_index*8) % 8 +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8]; //[ADDR_LSB+OPT_MEM_ADDR_BITS
        end
      else begin
            palettes[{read_write_axi_addr[4:2], S_AXI_WSTRB[3]}] <= S_AXI_WDATA[15:0];
        end
    end
end

endmodule
//module mux_axi_read_write ( input logic [11:0] axi_awaddr,
//                input logic [11:0] axi_araddr,
//                input logic slv_reg_wren,
//                input logic [3:0] wstrb,
//                output logic [3:0] wstrb_out,
//                output logic [11:0] read_write_axi_addr );
               
//        always_comb
//        begin
            
//            if( slv_reg_wren == 1'b1 ) begin
//                read_write_axi_addr = axi_awaddr;
//            end
//            else begin
//                read_write_axi_addr = axi_araddr;
//            end
//            if ( slv_reg_wren == 1'b1 && read_write_axi_addr[11:2] < 12'h4AF ) begin
//                wstrb_out = wstrb;              
//            end
//            else begin
//                wstrb_out = 4'b0000;
//            end
            
//        end
//endmodule




`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2023 09:26:41 AM
// Design Name: 
// Module Name: testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module testbench();

timeunit 10ns;	// Half clock cycle at 50 MHz
			// This is the amount of time represented by #1 
timeprecision 1ns;

// These signals are internal because the processor will be 
// instantiated as a submodule in testbench.
logic   Clk;     // Internal

     logic reset_rtl_0;
    
    //USB signals
     logic [0:0] gpio_usb_int_tri_i;
     logic gpio_usb_rst_tri_o;
     logic usb_spi_miso;
     logic usb_spi_mosi;
     logic usb_spi_sclk;
     logic usb_spi_ss;
    
    //UART
     logic uart_rtl_0_rxd;
     logic uart_rtl_0_txd;
    
    //HDMI
     logic hdmi_tmds_clk_n;
     logic hdmi_tmds_clk_p;
     logic [2:0]hdmi_tmds_data_n;
     logic [2:0]hdmi_tmds_data_p;
        
    //HEX displays
     logic [7:0] hex_segA;
     logic [3:0] hex_gridA;
     logic [7:0] hex_segB;
     logic [3:0] hex_gridB;
                               //changed to 7
    logic [7:0]  keycode;     // input data



test_top_file test_top_file(.*);	          
		
// Instantiating the DUT
// Make sure the module and signal names match with those in your design
//Processor processor0(.*);	
//assign state = processor0.control_unit.curr_state;
// Toggle the clock
// #1 means wait for a delay of 1 timeunit
always begin : CLOCK_GENERATION
#1 Clk = ~Clk;
end

initial begin: CLOCK_INITIALIZATION
    Clk = 0;
end 

// Testing begins here
// The initial block is not synthesizable
// Everything happens sequentially inside an initial block
// as in a software program
initial begin: TEST_VECTORS
#100
#10 keycode = 8'h2C;
#10 keycode = 8'h08;
#10 keycode = 8'h00;
#10 keycode = 8'h28;	// 
#10 keycode = 8'h00;

#20;
end
endmodule

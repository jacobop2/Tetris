`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Zuofu Cheng
// 
// Create Date: 12/11/2022 10:48:49 AM
// Design Name: 
// Module Name: mb_usb_hdmi_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// Top level for mb_lwusb test project, copy mb wrapper here from Verilog and modify
// to SV
// Dependencies: microblaze block design
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mb_usb_hdmi_top(
    input logic Clk,
    input logic reset_rtl_0,
    
    //USB signals
    input logic [0:0] gpio_usb_int_tri_i,
    output logic gpio_usb_rst_tri_o,
    input logic usb_spi_miso,
    output logic usb_spi_mosi,
    output logic usb_spi_sclk,
    output logic usb_spi_ss,
    
    //UART
    input logic uart_rtl_0_rxd,
    output logic uart_rtl_0_txd,
    
    //HDMI
    output logic hdmi_tmds_clk_n,
    output logic hdmi_tmds_clk_p,
    output logic [2:0]hdmi_tmds_data_n,
    output logic [2:0]hdmi_tmds_data_p,
        
    //HEX displays
    output logic [7:0] hex_segA,
    output logic [3:0] hex_gridA,
    output logic [7:0] hex_segB,
    output logic [3:0] hex_gridB
    
    //output logic [7:0] keycode
    );
    
   
    
    logic [31:0] keycode0_gpio, keycode1_gpio;
    logic clk_25MHz, clk_125MHz, clk, clk_100MHz;
    logic locked;
    logic [9:0] drawX, drawY, ballxsig, ballysig, ballsizesig;

    logic hsync, vsync, vde;
    logic [3:0] red, green, blue, red_start, green_start, blue_start, red_final, green_final, blue_final;
    logic reset_ah;
    
    assign reset_ah = reset_rtl_0;
    
    logic clk_60Hz; // made this 
    
    // NEW LOGIC FOR FINAL PROJECT
    logic [9:0] blockX, blockY;
    logic blockPlaced, attemptedMove, moveValid;
    
    logic board_ram_we, board_ram_write_data, board_ram_read_data;
    logic [7:0] board_ram_write_addr, board_ram_read_addr;
    
//    logic [7:0] Addr1, Addr2, Addr3, Addr4;
//    logic [7:0] Raddr1, Raddr2, Raddr3, Raddr4;
    
    logic generateBlock;
    
    logic [1:0] I_block_state;
    logic [1:0] L_block_state;
    logic [1:0] backL_block_state;
    logic [1:0] square_block_state;
    logic [1:0] S_block_state;
    logic [1:0] Z_block_state;
    logic [1:0] T_block_state;

    
    logic [6:0] sprite_select, long_sprite_select;
    
    logic reset, generateBlockSelect, showStartScreen, showEndScreen, gameOver;
    
    //assign keycode = keycode0_gpio[7:0];
    
    logic [5:0] board_regs[200];
    
    logic [23:0] digitBits;

    
    //Keycode HEX drivers
    HexDriver HexA (
        .clk(Clk),
        .reset(reset_ah),
        .in({keycode0_gpio[31:28], keycode0_gpio[27:24], keycode0_gpio[23:20], keycode0_gpio[19:16]}),
        .hex_seg(hex_segA),
        .hex_grid(hex_gridA)
    );
    
    HexDriver HexB (
        .clk(Clk),
        .reset(reset_ah),
        .in({keycode0_gpio[15:12], keycode0_gpio[11:8], keycode0_gpio[7:4], keycode0_gpio[3:0]}),
        .hex_seg(hex_segB),
        .hex_grid(hex_gridB)
    );
    
    mb_block mb_block_i(
        .clk_100MHz(Clk),
        .gpio_usb_int_tri_i(gpio_usb_int_tri_i),
        .gpio_usb_keycode_0_tri_o(keycode0_gpio),
        .gpio_usb_keycode_1_tri_o(keycode1_gpio),
        .gpio_usb_rst_tri_o(gpio_usb_rst_tri_o),
        .reset_rtl_0(~reset_ah), //Block designs expect active low reset, all other modules are active high
        .uart_rtl_0_rxd(uart_rtl_0_rxd),
        .uart_rtl_0_txd(uart_rtl_0_txd),
        .usb_spi_miso(usb_spi_miso),
        .usb_spi_mosi(usb_spi_mosi),
        .usb_spi_sclk(usb_spi_sclk),
        .usb_spi_ss(usb_spi_ss)
    );
        
    //clock wizard configured with a 1x and 5x clock for HDMI
    clk_wiz_0 clk_wiz (
        .clk_out1(clk_25MHz),
        .clk_out2(clk_125MHz),
        .reset(reset_ah),
        .locked(locked),
        .clk_in1(Clk)
    );
    
    //VGA Sync signal generator
    vga_controller vga (
        .pixel_clk(clk_25MHz),
        .reset(reset_ah),
        .hs(hsync),
        .vs(vsync),
        .active_nblank(vde),
        .drawX(drawX),
        .drawY(drawY)
    );    

    //Real Digital VGA to HDMI converter
    hdmi_tx_0 vga_to_hdmi (
        //Clocking and Reset
        .pix_clk(clk_25MHz),
        .pix_clkx5(clk_125MHz),
        .pix_clk_locked(locked),
        //Reset is active LOW
        .rst(reset_ah),
        //Color and Sync Signals
        .red(red_final),
        .green(green_final),
        .blue(blue_final),
        .hsync(hsync),
        .vsync(vsync),
        .vde(vde),
        
        //aux Data (unused)
        .aux0_din(4'b0),
        .aux1_din(4'b0),
        .aux2_din(4'b0),
        .ade(1'b0),
        
        //Differential outputs
        .TMDS_CLK_P(hdmi_tmds_clk_p),          
        .TMDS_CLK_N(hdmi_tmds_clk_n),          
        .TMDS_DATA_P(hdmi_tmds_data_p),         
        .TMDS_DATA_N(hdmi_tmds_data_n)          
    );

    

    fsm fsm(
        .Clk(clk_25MHz),                      //inputs
        .keycode(keycode0_gpio[7:0]),
        .BlockPlaced(blockPlaced),
        .GameOver(gameOver),
        
        .reset(reset),
        .generateBlockSelect(generateBlockSelect),
        .showStartScreen(showStartScreen),
        .showEndScreen(showEndScreen) );
    
    fpb_1_example exp(
        .vga_clk(clk_25MHz),
        .BaseX(drawX),
        .DrawY(drawY),
        .BlockX(blockX),
        .BlockY(blockY),
        .blank(vde),
        .red(red),
        .green(green),
        .blue(blue),
        .board_regs(board_regs),
        .I_block_state(I_block_state),
        .L_block_state(L_block_state),
        .backL_block_state(backL_block_state),
        .square_block_state(square_block_state),
        .T_block_state(T_block_state),
        .S_block_state(S_block_state),
        .Z_block_state(Z_block_state),
        .curr_block(long_sprite_select),
        .digit_bits(digitBits)
    );

    fp_start_example exp_start(
        .vga_clk(clk_25MHz),
        .DrawX(drawX),
        .DrawY(drawY),
        .blank(vde),
        .ShowEndScreen(showEndScreen),

        .red_start(red_start),
        .green_start(green_start),
        .blue_start(blue_start)
    );
    
    tetris_blocks tetris_blocks (
        .Reset(reset),
        .keycode(keycode0_gpio[7:0]),
        .frame_clk(clk_25MHz),
        .BlockX(blockX),
        .BlockY(blockY),
        .Sprite_Select(sprite_select),
        .Long_Sprite_Select(long_sprite_select),
        .Board_Regs(board_regs),
        .BlockPlaced(blockPlaced),
        .I_block_state(I_block_state),
        .L_block_state(L_block_state),
        .backL_block_state(backL_block_state),
        .square_block_state(square_block_state),
        .T_block_state(T_block_state),
        .S_block_state(S_block_state),
        .Z_block_state(Z_block_state) );
                    
    sprite_selector select (
            .Clk(clk_25MHz),
            .select(generateBlockSelect),
            .sprite_select(sprite_select),
            .long_sprite_select(long_sprite_select) );
    
    logic [7:0] board_reg_idx;
    logic [9:0] GridX, GridY;
    logic check;

    int score, multiplier;

    parameter MULTIPLIER_INCREMENT = 1;
    parameter CLEAR_ROW_BASE_SCORE = 10;

    int digit;
    int score_t;

    always_ff @ ( posedge clk_25MHz ) begin
    
        if ( showStartScreen == 1'b1 ) begin
            red_final = red_start;
            green_final = green_start;
            blue_final = blue_start;
        end   
        else begin
            red_final = red;
            green_final = green;
            blue_final = blue;
        end    
        
        score_t = score;
        for ( int i = 0; i < 6; i++ ) begin

            digit = score_t % 10;
            score_t = score_t / 10;

           // digitBits[i * 4 +: 4] = digit;
              case ( i ) 
                0: digitBits[3:0] = digit;
                1: digitBits[7:4] = digit;
                2: digitBits[11:8] = digit;
                3: digitBits[15:12] = digit;
                4: digitBits[19:16] = digit;
                5: digitBits[23:20] = digit;
                default: ;
            endcase
        end
    
        if ( reset == 1'b1 || ( showStartScreen == 1'b1 && showEndScreen == 1'b0 ) ) begin
            for ( int i = 0; i < 200; i++ ) begin
                board_regs[i] <= 6'b000000;
            end
            gameOver = 1'b0;
            score = 0;
            multiplier = 0;
        end
        
        GridX <= ( blockX - 240 ) / 16;
        GridY <= ( blockY - 80 ) / 16;
        board_reg_idx <= GridX + 10 * GridY;
        
        if ( blockPlaced == 1'b1 ) begin

            //multiplier = multiplier + MULTIPLIER_INCREMENT;
            score = score + 1;

            case ( long_sprite_select ) 
                //I block
                7'b0000001: begin
                    if ( I_block_state == 2'b11 || I_block_state == 2'b01 ) begin 
                        board_regs[board_reg_idx] <= { 1'b1, 2'b11, 3'b000 };
                        board_regs[board_reg_idx + 10] <= { 1'b1, 2'b11, 3'b000 };
                        board_regs[board_reg_idx + 20] <= { 1'b1, 2'b11, 3'b000 };
                        board_regs[board_reg_idx + 30] <= { 1'b1, 2'b11, 3'b000 };
                    end
                    else begin
                        board_regs[board_reg_idx] <= { 1'b1, 2'b00, 3'b000 };
                        board_regs[board_reg_idx + 1] <= { 1'b1, 2'b00, 3'b000 };
                        board_regs[board_reg_idx + 2] <= { 1'b1, 2'b00, 3'b000 };
                        board_regs[board_reg_idx + 3] <= { 1'b1, 2'b00, 3'b000 };
                    end
                end
                
                // L block
                7'b0000010: begin
                     if ( L_block_state == 2'b00 ) begin
                        board_regs[board_reg_idx + 2] <= { 1'b1, 2'b00, 3'b001 };
                        board_regs[board_reg_idx + 10] <= { 1'b1, 2'b00, 3'b001 };
                        board_regs[board_reg_idx + 11] <= { 1'b1, 2'b00, 3'b001 };
                        board_regs[board_reg_idx + 12] <= { 1'b1, 2'b00, 3'b001 };
                     end
                     else if ( L_block_state == 2'b01 ) begin
                        board_regs[board_reg_idx] <= { 1'b1, 2'b01, 3'b001 };
                        board_regs[board_reg_idx + 10] <= { 1'b1, 2'b01, 3'b001 };
                        board_regs[board_reg_idx + 20] <= { 1'b1, 2'b01, 3'b001 };
                        board_regs[board_reg_idx + 21] <= { 1'b1, 2'b01, 3'b001 };
                     end
                     
                     else if ( L_block_state == 2'b10 ) begin
                        board_regs[board_reg_idx] <= { 1'b1, 2'b10, 3'b001 };
                        board_regs[board_reg_idx + 1] <= { 1'b1, 2'b10, 3'b001 };
                        board_regs[board_reg_idx + 2] <= { 1'b1, 2'b10, 3'b001 };
                        board_regs[board_reg_idx + 10] <= { 1'b1, 2'b10, 3'b001 };
                     end
                     
                     else begin
                        board_regs[board_reg_idx] <= { 1'b1, 2'b11, 3'b001 };
                        board_regs[board_reg_idx + 1] <= { 1'b1, 2'b11, 3'b001 };
                        board_regs[board_reg_idx + 11] <= { 1'b1, 2'b11, 3'b001 };
                        board_regs[board_reg_idx + 21] <= { 1'b1, 2'b11, 3'b001 };
                     end
                end
                
                //back L block check
                7'b0000100: begin
                     if ( backL_block_state == 2'b00 ) begin
                        board_regs[board_reg_idx ] <= { 1'b1, 2'b00 , 3'b010 };
                        board_regs[board_reg_idx + 10] <= { 1'b1, 2'b00, 3'b010 };
                        board_regs[board_reg_idx + 11] <= { 1'b1, 2'b00, 3'b010 };
                        board_regs[board_reg_idx + 12] <= { 1'b1, 2'b00, 3'b010 };
                     end
                     else if ( backL_block_state == 2'b01 ) begin
                        board_regs[board_reg_idx] <= { 1'b1, 2'b01, 3'b010 };
                        board_regs[board_reg_idx + 1] <= { 1'b1, 2'b01, 3'b010 };
                        board_regs[board_reg_idx + 10] <= { 1'b1, 2'b01, 3'b010 };
                        board_regs[board_reg_idx + 20] <= { 1'b1, 2'b01, 3'b010 };
                     end
                     
                     else if ( backL_block_state == 2'b10 ) begin
                        board_regs[board_reg_idx] <= { 1'b1, 2'b10, 3'b010 };
                        board_regs[board_reg_idx + 1] <= { 1'b1, 2'b10, 3'b010 };
                        board_regs[board_reg_idx + 2] <= { 1'b1, 2'b10, 3'b010 };
                        board_regs[board_reg_idx + 12] <= { 1'b1, 2'b10, 3'b010 };
                     end
                     
                     else begin
                        board_regs[board_reg_idx + 1] <= { 1'b1, 2'b11, 3'b010 };
                        board_regs[board_reg_idx + 11] <= { 1'b1, 2'b11, 3'b010 };
                        board_regs[board_reg_idx + 20] <= { 1'b1, 2'b11, 3'b010 };
                        board_regs[board_reg_idx + 21] <= { 1'b1, 2'b11, 3'b010 };
                     end
                end
                
                //square block
                7'b0001000: begin
                     
                        board_regs[board_reg_idx] <= { 1'b1, 2'b00, 3'b011 };
                        board_regs[board_reg_idx + 1] <= { 1'b1, 2'b00, 3'b011 };
                        board_regs[board_reg_idx + 10] <= { 1'b1, 2'b00, 3'b011 };
                        board_regs[board_reg_idx + 11] <= { 1'b1, 2'b00, 3'b011 };
                end
                
                //T block check
                7'b0010000: begin
                     if ( T_block_state == 2'b00 ) begin
                        board_regs[board_reg_idx + 1] <= { 1'b1, 2'b00, 3'b100 };
                        board_regs[board_reg_idx + 10] <= { 1'b1, 2'b00, 3'b100 };
                        board_regs[board_reg_idx + 11] <= { 1'b1, 2'b00, 3'b100 };
                        board_regs[board_reg_idx + 12] <= { 1'b1, 2'b00, 3'b100 };
                     end
                     else if ( T_block_state == 2'b01 ) begin
                        board_regs[board_reg_idx] <= { 1'b1, 2'b01, 3'b100 };
                        board_regs[board_reg_idx + 10] <= { 1'b1, 2'b01, 3'b100 };
                        board_regs[board_reg_idx + 20] <= { 1'b1, 2'b01, 3'b100 };
                        board_regs[board_reg_idx + 11] <= { 1'b1, 2'b01, 3'b100 };
                     end
                     
                     else if ( T_block_state == 2'b10 ) begin
                        board_regs[board_reg_idx] <= { 1'b1, 2'b10, 3'b100 };
                        board_regs[board_reg_idx + 1] <= { 1'b1, 2'b10, 3'b100 };
                        board_regs[board_reg_idx + 2] <= { 1'b1, 2'b10, 3'b100 };
                        board_regs[board_reg_idx + 11] <= { 1'b1, 2'b10, 3'b100 };
                     end
                     
                     else begin
                        board_regs[board_reg_idx + 1] <= { 1'b1, 2'b11, 3'b100 };
                        board_regs[board_reg_idx + 10] <= { 1'b1, 2'b11, 3'b100 };
                        board_regs[board_reg_idx + 11] <= { 1'b1, 2'b11, 3'b100 };
                        board_regs[board_reg_idx + 21] <= { 1'b1, 2'b11, 3'b100 };
                     end
                end
                
                //s block check
                7'b0100000: begin
                     if ( S_block_state == 2'b00 ) begin
                        board_regs[board_reg_idx + 1] <= { 1'b1, 2'b00, 3'b101 };
                        board_regs[board_reg_idx + 2] <= { 1'b1, 2'b00, 3'b101 };
                        board_regs[board_reg_idx + 10] <= { 1'b1, 2'b00, 3'b101 };
                        board_regs[board_reg_idx + 11] <= { 1'b1, 2'b00, 3'b101 };
                     end
                     else if ( S_block_state == 2'b01 ) begin
                        board_regs[board_reg_idx] <= { 1'b1, 2'b01, 3'b101 };
                        board_regs[board_reg_idx + 10] <= { 1'b1, 2'b01, 3'b101 };
                        board_regs[board_reg_idx + 11] <= { 1'b1, 2'b01, 3'b101 };
                        board_regs[board_reg_idx + 21] <= { 1'b1, 2'b01, 3'b101 };
                     end
                     
                     else if ( S_block_state == 2'b10 ) begin
                        board_regs[board_reg_idx + 1] <= { 1'b1, 2'b10, 3'b101 };
                        board_regs[board_reg_idx + 2] <= { 1'b1, 2'b10, 3'b101 };
                        board_regs[board_reg_idx + 10] <= { 1'b1, 2'b10, 3'b101 };
                        board_regs[board_reg_idx + 11] <= { 1'b1, 2'b10, 3'b101 };
                     end
                     
                     else begin
                        board_regs[board_reg_idx] <= { 1'b1, 2'b11, 3'b101 };
                        board_regs[board_reg_idx + 10] <= { 1'b1, 2'b11, 3'b101 };
                        board_regs[board_reg_idx + 11] <= { 1'b1, 2'b11, 3'b101 };
                        board_regs[board_reg_idx + 21] <= { 1'b1, 2'b11, 3'b101 };
                     end
                end
                
                //z block check
                7'b1000000: begin
                     if ( Z_block_state == 2'b00 ) begin
                        board_regs[board_reg_idx ] <= { 1'b1, 2'b00, 3'b110 };
                        board_regs[board_reg_idx + 1] <= { 1'b1, 2'b00, 3'b110 };
                        board_regs[board_reg_idx + 11] <= { 1'b1, 2'b00, 3'b110 };
                        board_regs[board_reg_idx + 12] <= { 1'b1, 2'b00, 3'b110 };
                     end
                     else if ( Z_block_state == 2'b01 ) begin
                        board_regs[board_reg_idx + 1] <= { 1'b1, 2'b01, 3'b110 };
                        board_regs[board_reg_idx + 10] <= { 1'b1, 2'b01, 3'b110 };
                        board_regs[board_reg_idx + 11] <= { 1'b1, 2'b01, 3'b110 };
                        board_regs[board_reg_idx + 20] <= { 1'b1, 2'b01, 3'b110 };
                     end
                     
                     else if ( Z_block_state == 2'b10 ) begin
                        board_regs[board_reg_idx] <= { 1'b1, 2'b10, 3'b110 };
                        board_regs[board_reg_idx + 1] <= { 1'b1, 2'b10, 3'b110 };
                        board_regs[board_reg_idx + 11] <= { 1'b1, 2'b10, 3'b110 };
                        board_regs[board_reg_idx + 12] <= { 1'b1, 2'b10, 3'b110 };
                     end
                     
                     else begin
                        board_regs[board_reg_idx + 1] <= { 1'b1, 2'b11, 3'b110 };
                        board_regs[board_reg_idx + 10] <= { 1'b1, 2'b11, 3'b110 };
                        board_regs[board_reg_idx + 11] <= { 1'b1, 2'b11, 3'b110 };
                        board_regs[board_reg_idx + 20] <= { 1'b1, 2'b11, 3'b110 };
                     end
                end
                
           endcase
        end
        
        for ( int idx = 199; idx >= 19; idx = idx - 10 ) begin 
            check = 1'b0;
            for( int k = 0; k < 10; k++ ) begin
                if ( board_regs[idx-k][5] == 1'b0 ) begin
                    check = 1'b1;
                end
            end
            if ( check == 1'b0 ) begin 

                // Clear row
                for ( int i = ( idx - 9 ); i < ( idx + 1 ); i++ ) begin
                    board_regs[i] = 6'b000000;
                    score = score + multiplier * CLEAR_ROW_BASE_SCORE;
                end
                //loop through all movable indicies backward
                for ( int j = (idx-10); j >= 0; j--) begin
                    if ( board_regs[ j + 10 ][5] == 1'b1 ) begin
                        break;
                    end
                    else begin
                        board_regs[ j + 10 ] = board_regs[ j ];
                        board_regs[ j ] = 6'b000000;
                    end 
                end
                //clear top row
                for ( int i = 0; i < 10; i++ ) begin
                    board_regs[i] = 6'b000000;
                end
            end
        end

        // After all rows have been cleared, check the top row, if any block present game over
        for ( int row_idx = 0; row_idx < 10; row_idx++ ) begin
            if ( board_regs[row_idx][5] == 1'b1 ) begin
                gameOver = 1'b1;
                break;
            end
        end      
    end 
endmodule





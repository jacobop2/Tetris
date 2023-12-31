module fpb_1_example (
    input logic vga_clk,
    input logic [9:0] BaseX, DrawY, BlockX, BlockY,
    input logic blank,
    input logic [5:0] board_regs[200],
    input logic [1:0] I_block_state,
    input logic [1:0] L_block_state,
    input logic [1:0] backL_block_state,
    input logic [1:0] square_block_state,
    input logic [1:0] T_block_state,
    input logic [1:0] S_block_state,
    input logic [1:0] Z_block_state,
    input logic [6:0] curr_block,
    input logic [23:0] digit_bits,

    output logic [3:0] red, green, blue
);

    logic [9:0] board_reg_idx, DrawX;
    logic [2:0] grid_sprite;
    logic [1:0] grid_rotation;

    // Background sprite
    logic [13:0] rom_address_bg;
    logic [2:0] rom_q_bg;
    logic [3:0] palette_red_bg, palette_green_bg, palette_blue_bg;

    // Tetris Logo
    logic [13:0] rom_address_tetris_logo;
    logic [3:0] rom_q_tetris_logo;
    logic [3:0] palette_red_tl, palette_green_tl, palette_blue_tl;
    
    // Tetris I
    logic [13:0] rom_address_tetris_I;
    logic [3:0] rom_q_tetris_I;
    logic [3:0] palette_red_tI, palette_green_tI, palette_blue_tI;
    
    // Tetris L
    logic [13:0] rom_address_tetris_L;
    logic [3:0] rom_q_tetris_L;
    logic [3:0] palette_red_tL, palette_green_tL, palette_blue_tL;
    
    // Tetris backL
    logic [13:0] rom_address_tetris_backL;
    logic [3:0] rom_q_tetris_backL;
    logic [3:0] palette_red_tbackL, palette_green_tbackL, palette_blue_tbackL;
    
    // Tetris Square
    logic [13:0] rom_address_tetris_square;
    logic [3:0] rom_q_tetris_square;
    logic [3:0] palette_red_tsquare, palette_green_tsquare, palette_blue_tsquare;

    // Tetris S
    logic [13:0] rom_address_tetris_S;
    logic [3:0] rom_q_tetris_S;
    logic [3:0] palette_red_tS, palette_green_tS, palette_blue_tS;
    
    // Tetris Z
    logic [13:0] rom_address_tetris_Z;
    logic [3:0] rom_q_tetris_Z;
    logic [3:0] palette_red_tZ, palette_green_tZ, palette_blue_tZ;
    
    // Tetris T
    logic [13:0] rom_address_tetris_T;
    logic [3:0] rom_q_tetris_T;
    logic [3:0] palette_red_tT, palette_green_tT, palette_blue_tT;

    logic negedge_vga_clk;

    logic [7:0] digit_rom_addr;
    logic [7:0] digit_rom_data;
    logic [2:0] curr_digit;
    logic [2:0] curr_digit_val;



    // read from ROM on negedge, set pixel on posedge
    assign negedge_vga_clk = ~vga_clk;

    // Background sprite address calculation
    assign rom_address_bg = ( ( BaseX * 128) / 640 ) + ( ( ( DrawY * 96 ) / 480 ) * 128 );

    // Foreground sprite address calculation for bottom left corner
    assign rom_address_tetris_logo = ( BaseX < 140 && BaseX > 20 && DrawY > 400 && DrawY < 440 ) ? ( BaseX % 120 ) - 20 + (DrawY % 40) * 120 : 0; 

    //assign curr_digit = 5 - ( ( BaseX + 1 - 524 ) / 8 );
        
    always_ff @ (posedge vga_clk) begin
        red <= 4'h0;
        green <= 4'h0;
        blue <= 4'h0;
 
        if ( 238 <= BaseX && BaseX <= 582 ) begin
            DrawX <= BaseX + 2;
        end
        else begin
            DrawX <= BaseX;
        end
                
        //X <= DrawX - BlockX;
        //Y <= DrawY - BlockY;
                
        // if we are in score digits location
        if ( 524 <= DrawX && DrawX < 572 && 88 <= DrawY && DrawY < 104 ) begin

            // calculate which of 6 digits currently on, account for 0 being on the left instead of index 0
            curr_digit <= 5 - ( ( DrawX - 524 ) / 8 );
            //curr_digit_val = 5 - ( (DrawX - 524) / 8 );
            //curr_digit <= curr_digit_val;
            //digit_rom_addr = ( DrawY - 88 ) + 16 * digit_bits[curr_digit * 4 +: 4];
            case ( curr_digit ) 
                0: digit_rom_addr <= ( DrawY - 88 ) + 16 * digit_bits[3:0];
                1: digit_rom_addr <= ( DrawY - 88 ) + 16 * digit_bits[7:4];
                2: digit_rom_addr <= ( DrawY - 88 ) + 16 * digit_bits[11:8];
                3: digit_rom_addr <= ( DrawY - 88 ) + 16 * digit_bits[15:12];
                4: digit_rom_addr <= ( DrawY - 88 ) + 16 * digit_bits[19:16];
                5: digit_rom_addr <= ( DrawY - 88 ) + 16 * digit_bits[23:20];
                default: ;
            endcase
        end 

        if ( 240 <= DrawX && DrawX <= 400 && 80 <= DrawY && DrawY <= 400 ) begin // if in grid range
                
                       // ******************** I states *******************//
            if ( I_block_state == 2'b11 || I_block_state == 2'b01 ) begin 
                rom_address_tetris_I <= ( DrawX % 16 ) + ( ( DrawY - 80 ) % 64 ) * 16; 
            end
            else if ( I_block_state == 2'b00 || I_block_state == 2'b10 ) begin 
                rom_address_tetris_I <= ( ( 16 - DrawY ) % 16 ) + ( ( 64 - ( DrawX - 80 ) ) % 64 ) * 16; // added parentheses around drawX - 80
            end 
    
            // ******************** square states *******************//
    
            if ( square_block_state == 2'b11 || square_block_state == 2'b01 ) begin 
                rom_address_tetris_square <= ( DrawX % 32 ) + ( ( DrawY - 80 ) % 32 ) * 32; 
            end
            else if ( square_block_state == 2'b00 || square_block_state == 2'b10 ) begin 
                rom_address_tetris_square <= ( DrawX % 32 ) + ( ( DrawY - 80 ) % 32 ) * 32; 
            end
    
            // ******************** L states *******************//
            if ( L_block_state == 2'b11 ) begin 
                rom_address_tetris_L <= ( 31 - ( DrawX - BlockX ) ) + 32 * ( 47 - ( DrawY - BlockY ) ); // added -2 and -1
            end
            else if ( L_block_state == 2'b00 ) begin 
                rom_address_tetris_L <= ( 31 - ( DrawY - BlockY ) ) + 32 * ( DrawX - BlockX );
            end
            else if ( L_block_state == 2'b01 ) begin 
                rom_address_tetris_L <= ( DrawX - BlockX ) + 32 * ( DrawY - BlockY ) ;
            end
            else if ( L_block_state == 2'b10 ) begin 
                rom_address_tetris_L <= ( DrawY - BlockY ) + 32 * ( 47 - ( DrawX - BlockX ) );
            end

//            if ( L_block_state == 2'b11 ) begin 
//                rom_address_tetris_L <= ( 31 - ( ( DrawX - 240 ) % 32 ) ) + 32 * ( 47 - ( ( DrawY - 80 ) % 48 ) ); // added -2 and -1
//            end
//            else if ( L_block_state == 2'b00 ) begin 
//                rom_address_tetris_L <= 31 - ( ( DrawY - 80 ) % 32 ) + 32 * ( ( DrawX - 240 ) % 32 );
//            end
//            else if ( L_block_state == 2'b01 ) begin 
//                rom_address_tetris_L <= ( ( DrawX - 240 ) % 32 ) + 32 * ( ( DrawY - 80 ) % 48 );
//            end
//            else if ( L_block_state == 2'b10 ) begin 
//                rom_address_tetris_L <= ( ( DrawY - 80 ) % 48 ) + 32 * ( 47 - ( ( DrawX - 240 ) % 32 ) );
//            end
            
           // rom_address_tetris_L <= rom_address_tetris_L - 32; // LOOK AT THIS
            
            // ******************** backL states *******************//
            if ( backL_block_state == 2'b11 ) begin 
                rom_address_tetris_backL <= ( DrawX - BlockX ) + 32 * ( DrawY - BlockY );
            end
            else if ( backL_block_state == 2'b00 ) begin 
                rom_address_tetris_backL <= ( DrawY - BlockY ) + 32 * ( 47 - ( DrawX - BlockX ) );
            end
            else if ( backL_block_state == 2'b01 ) begin 
                rom_address_tetris_backL <= ( 31 - ( DrawX - BlockX ) ) + 32 * ( 47 - ( DrawY - BlockY ) );
            end
            else if ( backL_block_state == 2'b10 ) begin 
                rom_address_tetris_backL <= ( 31 - ( DrawY - BlockY ) ) + 32 * ( DrawX - BlockX );
            end
            
           // rom_address_tetris_backL <= rom_address_tetris_backL - 32;
    
            // ******************** T states *******************//
            if ( T_block_state == 2'b11 ) begin 
                rom_address_tetris_T <= 31 - ( DrawX - BlockX ) + 32 * ( DrawY - BlockY );
            end
            else if ( T_block_state == 2'b00 ) begin 
                rom_address_tetris_T <= 31 - ( DrawY - BlockY ) + 32 * ( 47 - ( DrawX - BlockX ) );
            end
            else if ( T_block_state == 2'b01 ) begin 
                rom_address_tetris_T <= ( DrawX - BlockX ) + 32 * ( DrawY - BlockY );
            end
            else if ( T_block_state == 2'b10 ) begin 
                rom_address_tetris_T <= ( DrawY - BlockY ) + 32 * ( 47 - ( DrawX - BlockX ) );
            end
            
            // ******************** S states *******************//
            if ( S_block_state == 2'b11 ) begin 
                rom_address_tetris_S <= 31 - ( DrawX - BlockX ) + 32 * ( 47 - ( DrawY - BlockY ) );
            end
            else if ( S_block_state == 2'b00 ) begin 
                rom_address_tetris_S <= 31 - ( DrawY - BlockY ) + 32 * ( DrawX - BlockX );
            end
            else if ( S_block_state == 2'b01 ) begin 
                rom_address_tetris_S <= ( DrawX - BlockX ) + 32 * ( DrawY - BlockY );
            end
            else if ( S_block_state == 2'b10 ) begin 
                rom_address_tetris_S <= ( DrawY - BlockY ) + 32 * ( 47 - ( DrawX - BlockX ) );
            end   
            
            // ******************** Z states *******************//
    
            if ( Z_block_state == 2'b11 ) begin 
                rom_address_tetris_Z <= 31 - ( DrawX - BlockX ) + 32 * ( 47 - ( DrawY - BlockY ) );
            end
            else if ( Z_block_state == 2'b00 ) begin 
                rom_address_tetris_Z <= 31 - ( DrawY - BlockY ) + 32 * ( DrawX - BlockX );
            end
            else if ( Z_block_state == 2'b01 ) begin 
                rom_address_tetris_Z <= ( DrawX - BlockX ) + 32 * ( DrawY - BlockY );
            end
            else if ( Z_block_state == 2'b10 ) begin 
                rom_address_tetris_Z <= ( DrawY - BlockY ) + 32 * ( 47 - ( DrawX - BlockX ) );
            end  
        
        
              // GridX <= ( DrawX - 240 ) / 16;
           //    GridY <= ( DrawY - 80 ) / 16;
               
              // AddrX <= ( DrawX - 240 ) % 16;
              // AddrY <= ( DrawY - 80 ) % 16;

               board_reg_idx <= ( ( DrawX - 240 ) / 16 )  + ( ( ( DrawY - 80 ) / 16 )  * 10 );
               
               if ( board_regs[board_reg_idx][5] == 1'b1 ) begin
               
                   grid_sprite <= board_regs[board_reg_idx][2:0];
                   grid_rotation <= board_regs[board_reg_idx][4:3];
                   
                   case ( grid_sprite ) 
                       // I block
                       3'b000 : begin
                         rom_address_tetris_I <= ( ( DrawX - 240 ) % 16 ) + 16 * ( ( DrawY - 80 ) % 16 ) ;
                           red <= palette_red_tI;
                           green <= palette_green_tI;
                           blue <= palette_blue_tI;       
                         end  
                       //L block 
                       3'b001 : begin
                         rom_address_tetris_L <= ( ( DrawX - 240 ) % 16 ) + 32 * ( ( DrawY - 80 ) % 16 ) ; //was 16 * addr Y
                           red <= palette_red_tL;
                           green <= palette_green_tL;
                           blue <= palette_blue_tL;       
                         end  
                       // backL block  
                       3'b010 : begin
                         rom_address_tetris_backL <= ( ( ( DrawX - 240 ) % 16 ) + 16 ) + 32 * ( ( DrawY - 80 ) % 16 ) ; 
                           red <= palette_red_tbackL;
                           green <= palette_green_tbackL;
                           blue <= palette_blue_tbackL;       
                         end   
                       // square block
                       3'b011 : begin
                         rom_address_tetris_square <= ( ( DrawX - 240 ) % 16 )  + 32 * ( ( DrawY - 80 ) % 16 ) ;
                           red <= palette_red_tsquare;
                           green <= palette_green_tsquare;
                           blue <= palette_blue_tsquare;       
                         end 
                      //T block
                      3'b100 : begin
                         rom_address_tetris_T <= ( ( DrawX - 240 ) % 16 )  + 32 * ( ( DrawY - 80 ) % 16 ) ;
                           red <= palette_red_tT;
                           green <= palette_green_tT;
                           blue <= palette_blue_tT;       
                         end 
                      //S block
                      3'b101 : begin
                         rom_address_tetris_S <= ( ( DrawX - 240 ) % 16 ) + 32 * ( ( DrawY - 80 ) % 16 ) ;
                           red <= palette_red_tS;
                           green <= palette_green_tS;
                           blue <= palette_blue_tS;       
                         end 
                       //Z block
                      3'b110 : begin
                         rom_address_tetris_Z <= ( ( ( DrawX - 240 ) % 16 )  + 16 ) + 32 * ( ( DrawY - 80 ) % 16 ) ;
                           red <= palette_red_tZ;
                           green <= palette_green_tZ;
                           blue <= palette_blue_tZ;       
                         end                       
                   endcase
               end
           
               

           
                //***************** I block *******************//
               if ( curr_block[0] == 1'b1 ) begin
                    
                    if ( ( I_block_state == 2'b11 && ( ( DrawX - BlockX ) < 16 && ( DrawY - BlockY ) < 64 ) )
                     ||  ( I_block_state == 2'b00 && ( ( DrawX - BlockX ) < 64 && ( DrawY - BlockY ) < 16 ) )
                     ||  ( I_block_state == 2'b01 && ( ( DrawX - BlockX ) < 16 && ( DrawY - BlockY ) < 64 ) )
                     ||  ( I_block_state == 2'b10 && ( ( DrawX - BlockX ) < 64 && ( DrawY - BlockY ) < 16 ) ) ) begin
                           
                        red <= palette_red_tI;
                        green <= palette_green_tI;
                        blue <= palette_blue_tI;
                    end
                    
                    else if ( (DrawX - 240) % 16 == 0 || (DrawY - 80) % 16 == 0  ) begin
                        if ( board_regs[board_reg_idx][5] == 1'b0 ) begin
                            red <= 4'hF;
                            green <= 4'hF;
                            blue <= 4'hF;
                        end
                    end
                    
                    else begin
                        if ( board_regs[board_reg_idx][5] == 1'b0 ) begin
                            red <= 4'h0;
                            green <= 4'h0;
                            blue <= 4'h0;
                        end
                    end
                
                end
                
                
                
                //***************** L block *******************//
                else if ( curr_block[1] == 1'b1 ) begin

                    if ( ( ( L_block_state == 2'b11 || L_block_state == 2'b01 ) && ( DrawX - BlockX ) < 32 && ( DrawY - BlockY ) < 48 )
                        || ( ( L_block_state == 2'b10 || L_block_state == 2'b00 ) && ( DrawX - BlockX ) < 48 && ( DrawY - BlockY ) < 32 ) ) begin
                                                   
                        if ( palette_green_tL < 4'hE ) begin
                            red <= palette_red_tL;
                            green <= palette_green_tL;
                            blue <= palette_blue_tL;
                        end
                        else if ( (DrawX - 240) % 16 == 0 || (DrawY - 80) % 16 == 0 ) begin
                            if ( board_regs[board_reg_idx][5] == 1'b0 ) begin
                                red <= 4'hF;
                                green <= 4'hF;
                                blue <= 4'hF;
                            end
                        end
                    
                        else begin
                            if ( board_regs[board_reg_idx][5] == 1'b0 ) begin
                                red <= 4'h0;
                                green <= 4'h0;
                                blue <= 4'h0;
                            end            
                        end
                   end
                   
                   else if ((DrawX - 240) % 16 == 0 || (DrawY - 80) % 16 == 0 ) begin
                        if ( board_regs[board_reg_idx][5] == 1'b0 ) begin
                            red <= 4'hF;
                            green <= 4'hF;
                            blue <= 4'hF;
                        end
                    end
                    
                    else begin
                        if ( board_regs[board_reg_idx][5] == 1'b0 ) begin
                                red <= 4'h0;
                                green <= 4'h0;
                                blue <= 4'h0;
                        end                  
                    end
                end

                //***************** square block *******************//
                else if ( curr_block[3] == 1'b1 ) begin
                       
                        if ( ( square_block_state == 2'b11 && ( ( DrawX - BlockX ) < 32 && ( DrawY - BlockY ) < 32 ) )
                         ||  ( square_block_state == 2'b00 && ( ( DrawX - BlockX ) < 32 && ( DrawY - BlockY ) < 32 ) )
                         ||  ( square_block_state == 2'b01 && ( ( DrawX - BlockX ) < 32 && ( DrawY - BlockY ) < 32 ) )
                         ||  ( square_block_state == 2'b10 && ( ( DrawX - BlockX ) < 32 && ( DrawY - BlockY ) < 32 ) ) ) begin
                               
                            red <= palette_red_tsquare;
                            green <= palette_green_tsquare;
                            blue <= palette_blue_tsquare;
                        end 
                        
                        else if ( (DrawX - 240) % 16 == 0 || (DrawY - 80) % 16 == 0 ) begin
                            if ( board_regs[board_reg_idx][5] == 1'b0 ) begin
                                red <= 4'hF;
                                green <= 4'hF;
                                blue <= 4'hF;
                            end
                        end
                        
                        else begin
                           if ( board_regs[board_reg_idx][5] == 1'b0 ) begin
                                red <= 4'h0;
                                green <= 4'h0;
                                blue <= 4'h0;
                            end
                        end
                end
                
                //***************** backL block *******************//
                else if ( curr_block[2] == 1'b1 ) begin
                       
                    if ( ( ( backL_block_state == 2'b11 || backL_block_state == 2'b01 ) && ( DrawX - BlockX ) < 32 && ( DrawY - BlockY ) < 48 )
                        || ( ( backL_block_state == 2'b10 || backL_block_state == 2'b00 ) && ( DrawX - BlockX ) < 48 && ( DrawY - BlockY ) < 32 ) ) begin
                               
                            if ( palette_green_tbackL < 4'hE ) begin
                                red <= palette_red_tbackL;
                                green <= palette_green_tbackL;
                                blue <= palette_blue_tbackL;
                            end
                            else if ( (DrawX - 240) % 16 == 0 || (DrawY - 80) % 16 == 0 ) begin
                                if ( board_regs[board_reg_idx][5] == 1'b0 ) begin
                                    red <= 4'hF;
                                    green <= 4'hF;
                                    blue <= 4'hF;
                                end 
                            end
                        
                            else begin
                                if ( board_regs[board_reg_idx][5] == 1'b0 ) begin
                                    red <= 4'h0;
                                    green <= 4'h0;
                                    blue <= 4'h0;
                                end
                            end                            
                        end 
                        
                        else if ( (DrawX - 240) % 16 == 0 || (DrawY - 80) % 16 == 0) begin
                            if ( board_regs[board_reg_idx][5] == 1'b0 ) begin
                                red <= 4'hF;
                                green <= 4'hF;
                                blue <= 4'hF;
                            end
                        end
                        
                        else begin
                            if ( board_regs[board_reg_idx][5] == 1'b0 ) begin
                                red <= 4'h0;
                                green <= 4'h0;
                                blue <= 4'h0;
                            end
                        end
                end
                
                
                //***************** T block *******************//
                else if ( curr_block[4] == 1'b1 ) begin

                    if ( ( ( T_block_state == 2'b11 || T_block_state == 2'b01 ) && ( DrawX - BlockX ) < 32 && ( DrawY - BlockY ) < 48 )
                        || ( ( T_block_state == 2'b10 || T_block_state == 2'b00 ) && ( DrawX - BlockX ) < 48 && ( DrawY - BlockY ) < 32 ) ) begin
                           
                        if ( palette_green_tT < 4'hE ) begin
                            red <= palette_red_tT;
                            green <= palette_green_tT;
                            blue <= palette_blue_tT;
                        end
                        else if ( (DrawX - 240) % 16 == 0 || (DrawY - 80) % 16 == 0 ) begin
                            if ( board_regs[board_reg_idx][5] == 1'b0 ) begin
                                red <= 4'hF;
                                green <= 4'hF;
                                blue <= 4'hF;
                            end
                        end
                    
                        else begin
                            if ( board_regs[board_reg_idx][5] == 1'b0 ) begin
                                red <= 4'h0;
                                green <= 4'h0;
                                blue <= 4'h0;
                            end
                        end
                   end
                   
                   else if ( (DrawX - 240) % 16 == 0 || (DrawY - 80) % 16 == 0 ) begin
                        if ( board_regs[board_reg_idx][5] == 1'b0 ) begin
                            red <= 4'hF;
                            green <= 4'hF;
                            blue <= 4'hF;
                        end
                    end
                    
                    else begin
                        if ( board_regs[board_reg_idx][5] == 1'b0 ) begin
                                red <= 4'h0;
                                green <= 4'h0;
                                blue <= 4'h0;
                       end
                    end
                end
                
                
                
                //************************* S block ***********************//
                 
                else if ( curr_block[5] == 1'b1 ) begin

                    if ( ( ( S_block_state == 2'b11 || S_block_state == 2'b01 ) && ( DrawX - BlockX ) < 32 && ( DrawY - BlockY ) < 48 )
                        || ( ( S_block_state == 2'b10 || S_block_state == 2'b00 ) && ( DrawX - BlockX ) < 48 && ( DrawY - BlockY ) < 32 ) ) begin
                           
                        if ( palette_green_tS < 4'hE ) begin
                            red <= palette_red_tS;
                            green <= palette_green_tS;
                            blue <= palette_blue_tS;
                        end
                        else if ((DrawX - 240) % 16 == 0 || (DrawY - 80) % 16 == 0 ) begin
                            if ( board_regs[board_reg_idx][5] == 1'b0 ) begin
                                red <= 4'hF;
                                green <= 4'hF;
                                blue <= 4'hF;
                            end
                        end
                    
                        else begin
                            if ( board_regs[board_reg_idx][5] == 1'b0 ) begin
                                red <= 4'h0;
                                green <= 4'h0;
                                blue <= 4'h0;
                            end
                        end
                   end
                   
                   else if ((DrawX - 240) % 16 == 0 || (DrawY - 80) % 16 == 0 ) begin
                        if ( board_regs[board_reg_idx][5] == 1'b0 ) begin
                            red <= 4'hF;
                            green <= 4'hF;
                            blue <= 4'hF;
                        end
                    end
                    
                    else begin
                        if ( board_regs[board_reg_idx][5] == 1'b0 ) begin
                                red <= 4'h0;
                                green <= 4'h0;
                                blue <= 4'h0;
                        end
                    end
                end
                
                
                //***************** Z block *******************//
                                 
                else if ( curr_block[6] == 1'b1 ) begin

                    if ( ( ( Z_block_state == 2'b11 || Z_block_state == 2'b01 ) && ( DrawX - BlockX ) < 32 && ( DrawY - BlockY ) < 48 )
                        || ( ( Z_block_state == 2'b10 || Z_block_state == 2'b00 ) && ( DrawX - BlockX ) < 48 && ( DrawY - BlockY ) < 32 ) ) begin
                           
                        if ( palette_green_tZ < 4'hE ) begin
                            red <= palette_red_tZ;
                            green <= palette_green_tZ;
                            blue <= palette_blue_tZ;
                        end
                        else if ( (DrawX - 240) % 16 == 0 || (DrawY - 80) % 16 == 0 ) begin
                            if ( board_regs[board_reg_idx][5] == 1'b0 ) begin
                                red <= 4'hF;
                                green <= 4'hF;
                                blue <= 4'hF;
                            end
                        end
                    
                        else begin
                            if ( board_regs[board_reg_idx][5] == 1'b0 ) begin
                                red <= 4'h0;
                                green <= 4'h0;
                                blue <= 4'h0;
                            end
                        end
                   end
                   
                   else if ( (DrawX - 240) % 16 == 0 || (DrawY - 80) % 16 == 0 ) begin
                       if ( board_regs[board_reg_idx][5] == 1'b0 ) begin
                            red <= 4'hF;
                            green <= 4'hF;
                            blue <= 4'hF;
                       end
                    end
                    
                    else begin
                        if ( board_regs[board_reg_idx][5] == 1'b0 ) begin
                                red <= 4'h0;
                                green <= 4'h0;
                                blue <= 4'h0;
                        end
                    end
                end
                
                
                //************** Drawing table ********************//
                
                else if ( (DrawX - 240) % 16 == 0 || (DrawY - 80) % 16 == 0 ) begin
                    if ( board_regs[board_reg_idx][5] == 1'b0 ) begin
                            red <= 4'hF;
                            green <= 4'hF;
                            blue <= 4'hF;
                    end
               end
                        
                else begin
                    if ( board_regs[board_reg_idx][5] == 1'b0 ) begin
                                red <= 4'h0;
                                green <= 4'h0;
                                blue <= 4'h0;
                   end
               end
          end 

        // Drawing Scoreboard
        else if ( 459 <= DrawX && DrawX <= 581 && 79 <= DrawY && DrawY <= 113 ) begin

            // if on boundary, color white
            if ( DrawY == 79 || DrawY == 113 || DrawX == 459 || DrawX == 581 ) begin
                red <= 4'hF;
                green <= 4'hF;
                blue <= 4'hF;
            end

            else if ( 460 <= DrawX && DrawX <= 580 && 88 <= DrawY && DrawY < 104 ) begin

                // if we are in score digits location
                //was 524
                if ( 522 <= DrawX && DrawX < 572 ) begin
                    // Draw returned char
                    if ( digit_rom_data[7 - ( DrawX - 468 ) % 8] == 1'b1 ) begin // changed from charX to 7 - charX
                        red <= 4'hF; 
                        green <= 4'hF;
                        blue <= 4'hF;
                    end
                    else begin
                        red <= 4'h0;
                        green <= 4'h0;
                        blue <= 4'h0;
                    end

                end
                else begin
                    red <= 4'h0;
                    green <= 4'h0;
                    blue <= 4'h0;
                end

            end

        end

         //Check if the pixel is in the bottom left corner
        else if ( (21 < DrawX && DrawX < 140 && 401 <= DrawY && DrawY <= 439) && ( { palette_red_tl, palette_green_tl, palette_blue_tl } != 12'h0 ) && ( { palette_red_tl, palette_green_tl, palette_blue_tl } != 12'hDFF ) ) begin
            red <= palette_red_tl;
            green <= palette_green_tl;
            blue <= palette_blue_tl;
        end 
        else if (blank) begin
            red <= palette_red_bg;
            green <= palette_green_bg;
            blue <= palette_blue_bg;
        end
  end
  

    //score rom 
    digit_rom digit_rom (
        .addr(digit_rom_addr), 
        .data(digit_rom_data)
    );
    
    // Background sprite memory
    blk_mem_gen_0 fpb_1_rom_bg (
        .clka   (negedge_vga_clk),
        .addra (rom_address_bg),
        .douta       (rom_q_bg)
    );

    // Tetris logo sprite memory
    tetris_logo tetris_logo_rom (
        .clka   (negedge_vga_clk),
        .addra (rom_address_tetris_logo),
        .douta       (rom_q_tetris_logo)
    );
    
    // Tetris I memory
    tetris_I_rom tetris_I_rom (
        .clka   (negedge_vga_clk),
        .addra (rom_address_tetris_I),
        .douta       (rom_q_tetris_I)
    );
    
    // Tetris L memory
    tetris_L_rom tetris_L_rom (
        .clka   (negedge_vga_clk),
        .addra (rom_address_tetris_L),
        .douta       (rom_q_tetris_L)
    );
    
        // Tetris backL memory
    tetris_backL_rom tetris_backL_rom (
        .clka   (negedge_vga_clk),
        .addra (rom_address_tetris_backL),
        .douta       (rom_q_tetris_backL)
    );
    
    // Tetris T memory
    tetris_T_rom tetris_T_rom (
        .clka   (negedge_vga_clk),
        .addra (rom_address_tetris_T),
        .douta       (rom_q_tetris_T)
    );
    
    // Tetris S memory
    tetris_S_rom tetris_S_rom (
        .clka   (negedge_vga_clk),
        .addra (rom_address_tetris_S),
        .douta       (rom_q_tetris_S)
    );
    
    // Tetris Z memory
    tetris_Z_rom tetris_Z_rom (
        .clka   (negedge_vga_clk),
        .addra (rom_address_tetris_Z),
        .douta       (rom_q_tetris_Z)
    );
    
    // Tetris square memory
    tetris_square_rom tetris_square_rom (
        .clka   (negedge_vga_clk),
        .addra (rom_address_tetris_square),
        .douta       (rom_q_tetris_square)
    );


    // Background sprite palette
    fpb_1_palette fpb_1_palette_bg (
        .index (rom_q_bg),
        .red   (palette_red_bg),
        .green (palette_green_bg),
        .blue  (palette_blue_bg)
    );

    // Foreground sprite palette
    tetris_logo_palette tetris_logo_palette (
        .index (rom_q_tetris_logo),
        .red   (palette_red_tl),
        .green (palette_green_tl),
        .blue  (palette_blue_tl)
    );
    
    tetris_I_palette tetris_I_palette (
        .index (rom_q_tetris_I),
        .red   (palette_red_tI),
        .green (palette_green_tI),
        .blue  (palette_blue_tI)
    );
    
    tetris_L_palette tetris_L_palette (
        .index (rom_q_tetris_L),
        .red   (palette_red_tL),
        .green (palette_green_tL),
        .blue  (palette_blue_tL)
    );

    tetris_backL_palette tetris_backL_palette (
        .index (rom_q_tetris_backL),
        .red   (palette_red_tbackL),
        .green (palette_green_tbackL),
        .blue  (palette_blue_tbackL)
    );
    
    tetris_T_palette tetris_T_palette (
        .index (rom_q_tetris_T),
        .red   (palette_red_tT),
        .green (palette_green_tT),
        .blue  (palette_blue_tT)
    );
   
    tetris_S_palette tetris_S_palette (
        .index (rom_q_tetris_S),
        .red   (palette_red_tS),
        .green (palette_green_tS),
        .blue  (palette_blue_tS)
    );
    
    tetris_Z_palette tetris_Z_palette (
        .index (rom_q_tetris_Z),
        .red   (palette_red_tZ),
        .green (palette_green_tZ),
        .blue  (palette_blue_tZ)
    );

    tetris_square_palette tetris_square_palette (
        .index (rom_q_tetris_square),
        .red   (palette_red_tsquare),
        .green (palette_green_tsquare),
        .blue  (palette_blue_tsquare)
    );

endmodule


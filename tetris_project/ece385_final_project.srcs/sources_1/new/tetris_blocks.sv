`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ECE 385
// Engineers: Jacob Poeschel and Meredith Naylor
// 
// Create Date: 11/11/2023 01:40:52 PM
// Design Name: Tetris Control Module
// Module Name: tetris_blocks
// Project Name: Tetris Final Project
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
module tetris_blocks(
               input logic frame_clk, Reset, // reset
			   input logic [7:0] keycode,
			   input logic [6:0] Sprite_Select, Long_Sprite_Select,
			   
			   input logic [5:0] Board_Regs[200],
			   
               output logic [9:0] BlockX, BlockY,
               output logic BlockPlaced,
               output logic [1:0] I_block_state,
               output logic [1:0] L_block_state,
               output logic [1:0] backL_block_state,
               output logic [1:0] square_block_state,
               output logic [1:0] T_block_state,
               output logic [1:0] S_block_state,
               output logic [1:0] Z_block_state);	

    logic [9:0] Ix, Lx, backLx, Tx, squarex, Sx, Zx;
    logic [9:0] Iy, Ly, backLy, Ty, squarey, Sy, Zy;
    logic PI, PL, PbackL, PT, Pquare, PS, PZ;

    // set correct block X and Y
    always_ff @ ( posedge frame_clk ) begin   
    //always_comb begin     
        // I
        if ( Long_Sprite_Select[0] == 1'b1 ) begin
            BlockX = Ix;
            BlockY = Iy;
            BlockPlaced = PI;
        end
        
        // L
        else if ( Long_Sprite_Select[1] == 1'b1 ) begin
            BlockX = Lx;
            BlockY = Ly;
            BlockPlaced = PL;
        end
        
        // backL
        else if ( Long_Sprite_Select[2] == 1'b1 ) begin
            BlockX = backLx;
            BlockY = backLy;
            BlockPlaced = PbackL;
        end
        
        // square
        else if ( Long_Sprite_Select[3] == 1'b1 ) begin
            BlockX = squarex;
            BlockY = squarey;
            BlockPlaced = Psquare;
        end
        
        // T
        else if ( Long_Sprite_Select[4] == 1'b1 ) begin
            BlockX = Tx;
            BlockY = Ty;
            BlockPlaced = PT;
        end
        
        // S
        else if ( Long_Sprite_Select[5] == 1'b1 ) begin
            BlockX = Sx;
            BlockY = Sy;
            BlockPlaced = PS;
        end
        
        // Z
        else if ( Long_Sprite_Select[6] == 1'b1 ) begin
            BlockX = Zx;
            BlockY = Zy;
            BlockPlaced = PZ;
        end
        
    end

    tetris_I tetris_I (
        .reset(Reset),
        .frame_clk(frame_clk),
        .keycode(keycode),
        .GenerateBlock(Sprite_Select[0]),
        .board_regs(Board_Regs),
        
        .active(Long_Sprite_Select[0]),
        
        // OUTPUTS
        .BlockX(Ix),
        .BlockY(Iy),
        .BlockPlaced(PI),
        .I_block_state(I_block_state)
    );
        
        
    tetris_L tetris_L (
        .reset(Reset),
        .frame_clk(frame_clk),
        .keycode(keycode),
        .GenerateBlock(Sprite_Select[1]),                        
        .board_regs(Board_Regs),
        
        .active(Long_Sprite_Select[1]),
        
        // outputs  
        .BlockX(Lx),
        .BlockY(Ly),
        .BlockPlaced(PL),
        .L_block_state(L_block_state)
    );
    
    tetris_backL tetris_backL (
        .reset(Reset),
        .frame_clk(frame_clk),
        .keycode(keycode),
        .GenerateBlock(Sprite_Select[2]),              
        .board_regs(Board_Regs),  
        
        .active(Long_Sprite_Select[2]),
        // outputs                     
        .BlockX(backLx),
        .BlockY(backLy),
        .BlockPlaced(PbackL),
        .backL_block_state(backL_block_state)
    );
    
    tetris_square tetris_square (
        .reset(Reset),
        .frame_clk(frame_clk),
        .keycode(keycode),
        .GenerateBlock(Sprite_Select[3]),                 
        .board_regs(Board_Regs),
        .active(Long_Sprite_Select[3]),
        // outputs  
        .BlockX(squarex),
        .BlockY(squarey),
        .BlockPlaced(Psquare),
        .square_block_state(square_block_state)
    );
    
    tetris_T tetris_T (
        .reset(Reset),
        .frame_clk(frame_clk),
        .keycode(keycode),
        .GenerateBlock(Sprite_Select[4]),
        .board_regs(Board_Regs),
        .active(Long_Sprite_Select[4]),
        // outputs  
        .BlockX(Tx),
        .BlockY(Ty),
        .BlockPlaced(PT),
        .T_block_state(T_block_state)
    );
    
    tetris_S tetris_S (
        .reset(Reset),
        .frame_clk(frame_clk),
        .keycode(keycode),
        .GenerateBlock(Sprite_Select[5]),
        .board_regs(Board_Regs),
        .active(Long_Sprite_Select[5]),
        // outputs  
        .BlockX(Sx),
        .BlockY(Sy),
        .BlockPlaced(PS),
        .S_block_state(S_block_state)
    );
    
    tetris_Z tetris_Z (
        .reset(Reset),
        .frame_clk(frame_clk),
        .keycode(keycode),
        .GenerateBlock(Sprite_Select[6]),
        .board_regs(Board_Regs),
        .active(Long_Sprite_Select[6]),
        // outputs  
        .BlockX(Zx),
        .BlockY(Zy),
        .BlockPlaced(PZ),
        .Z_block_state(Z_block_state)
    );
                  
endmodule

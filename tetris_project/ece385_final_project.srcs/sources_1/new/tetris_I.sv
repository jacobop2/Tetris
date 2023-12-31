parameter BLOCK_SIZE = 16;

parameter GRID_START_X = 240;
parameter GRID_START_Y = 80;

parameter GRID_END_X = 400;
parameter GRID_END_Y = 400;

parameter GRID_WIDTH = GRID_END_X - GRID_START_X;
parameter GRID_HEIGHT = GRID_END_Y - GRID_START_Y;

parameter FRAME_COUNTER_MAX = 25000000;  //real
parameter FRAME_COUNTER_XMOVE_MAX = 2500000;  //real

//parameter FRAME_COUNTER_MAX = 5; //sim
//parameter FRAME_COUNTER_XMOVE_MAX = 1; //sim

// TETRIS I BLOCK MODULE
module tetris_I (
            input logic frame_clk, reset,
            input logic [7:0] keycode,
            input logic MoveValid, GenerateBlock,
            output logic [9:0] BlockX, BlockY,
            input logic [5:0] board_regs[200],
            input logic active,
            output logic BlockPlaced, AttemptedMove,
            output logic [1:0] I_block_state );
      
    // Define I block height and width
    parameter HEIGHT = 4 * BLOCK_SIZE;
    parameter WIDTH = BLOCK_SIZE;
      
    logic [25:0] frame_counter;
    logic [25:0] frame_counter_xmove;
        
    logic dPressed = 1'b0;
    logic aPressed = 1'b0;
    logic wPressed = 1'b0;
    logic sPressed = 1'b0;
    logic ready = 1'b0;
    
    logic [9:0] GridX, GridY, board_reg_idx;

    assign raddr1 = 8'd201; // assign default addresses to out of bounds in case they are not used
    assign raddr2 = 8'd201;
    assign raddr3 = 8'd201;
    assign raddr4 = 8'd201;
        
    logic I_block_state = 2'b11; //start state of block I up and down
    
    always_ff @ ( posedge frame_clk ) 
        begin

        BlockPlaced <= 1'b0;
        
        GridX <= ( BlockX - 240 ) / 16;
        GridY <= ( BlockY - 80 ) / 16;
        board_reg_idx <= GridX + ( GridY * 10 );
        
        // If we need to generate a block, start it at the top of the grid in the middle
        if ( GenerateBlock == 1'b1 ) begin
                //BlockY <= GRID_START_Y+2*BLOCK_SIZE; //very wrong testing only 
                BlockY <= GRID_START_Y;
                BlockX <= GRID_START_X + GRID_WIDTH / 2 - BLOCK_SIZE;
                frame_counter <= 26'b0;
        end 
       
        else if ( active == 1'b1 ) begin
            
            // If the key is released, mark ready for another press
            if ( keycode == 8'h00 ) begin
                ready <= 1'b1;
            end
            // Check for rising edge of A key
            if ( keycode == 8'h04 && !aPressed && ready ) begin
                aPressed <= 1'b1;
            end
            // Check for rising edge of D key
            if ( keycode == 8'h07 && !dPressed && ready ) begin
                dPressed <= 1'b1;
            end
            // Check for rising edge of W key
            if ( keycode == 8'h1A && !wPressed && ready ) begin
                wPressed <= 1'b1;
            end
            // Check for rising edge of S key
            if ( keycode == 8'h16 && !sPressed ) begin
                sPressed <= 1'b1;
            end

            // Limits calulations to once a second
            if ( frame_counter == FRAME_COUNTER_MAX ) begin

                // If block is in vertical state, check that the bottom is in bounds
                if ( BlockY + HEIGHT < GRID_END_Y && ( I_block_state == 2'b11 || I_block_state == 2'b01 ) && ( board_regs[board_reg_idx + 40][5] == 1'b0 ) ) begin 
                    //if one down in board red
                    BlockY <= BlockY + BLOCK_SIZE;
                end 
                // If in horizontal state, check that bottom is in bounds
                else if ( BlockY + WIDTH < GRID_END_Y && ( I_block_state == 2'b10 || I_block_state == 2'b00 ) && ( board_regs[board_reg_idx + 10][5] == 1'b0 )
                && ( board_regs[board_reg_idx + 11][5] == 1'b0 ) && ( board_regs[board_reg_idx + 12][5] == 1'b0 ) && ( board_regs[board_reg_idx + 13][5] == 1'b0 ) ) begin                    
                     BlockY <= BlockY + BLOCK_SIZE;
                end
                // If bottom is not in bounds, mark as placed, maintain current blockY
                else begin
                    BlockPlaced <= 1'b1; // if block is placed, need to update board, set addrs
                    BlockY <= BlockY;
                    
 //**************************//added to get rid of delayed logic delete if an issue
                    
//                    aPressed <= 1'b0;
//                    dPressed <= 1'b0;
//                    wPressed <= 1'b0;
//                    sPressed <= 1'b0;
//                    ready <= 1'b0;
                end
                frame_counter <= 26'b0;
            end 
            // Increment frame counter until it is at max
            else begin
                frame_counter <= frame_counter + 1; // Increment the counter
            end
        end
        
        // If we are at the move counter, and ( ( block vertical && in bounds ) || ( block horizontal and in bounds ) )
        if ( ( frame_counter_xmove == FRAME_COUNTER_XMOVE_MAX ) && ( ( BlockY + HEIGHT < GRID_END_Y && ( I_block_state == 2'b11 || I_block_state == 2'b01 ) ) 
                                                        || ( BlockY + WIDTH < GRID_END_Y && ( I_block_state == 2'b10 || I_block_state == 2'b00 ) ) ) ) begin //10
            
            //***** MOVE *****
            // If A is pressed and that move is in bounds *** Same calculation for horizontal and vertical
            if ( aPressed == 1'b1 && ( BlockX - BLOCK_SIZE ) >= GRID_START_X ) begin
                //check all block indicies to left of block
                if ( ( board_regs[board_reg_idx - 1][5] == 1'b0 ) && ( board_regs[board_reg_idx + 9][5] == 1'b0 ) 
                  && ( board_regs[board_reg_idx + 19][5] == 1'b0 ) && ( board_regs[board_reg_idx + 29][5] == 1'b0 ) ) begin                
                
                    BlockX <= BlockX - BLOCK_SIZE;
                end
            end
            // Else if D is pressed, block is vertical, and move is in bounds
            else if ( ( dPressed == 1'b1 && ( BlockX + WIDTH + BLOCK_SIZE ) <= GRID_END_X && ( I_block_state == 2'b11 || I_block_state == 2'b01 ) ) ) begin                 
                if ( ( board_regs[board_reg_idx + 1][5] == 1'b0 ) && ( board_regs[board_reg_idx + 11][5] == 1'b0 ) 
                  && ( board_regs[board_reg_idx + 21][5] == 1'b0 ) && ( board_regs[board_reg_idx + 31][5] == 1'b0 ) ) begin          
                     BlockX <= BlockX + BLOCK_SIZE;
                end
            end
            // Else if D is pressed, block is horizontal, and move is in bounds
            else if ( ( dPressed == 1'b1 && ( BlockX + HEIGHT + BLOCK_SIZE ) <= GRID_END_X && ( I_block_state == 2'b10 || I_block_state == 2'b00 ) ) ) begin                
                if ( ( board_regs[board_reg_idx + 4][5] == 1'b0 ) ) begin        
                    BlockX <= BlockX + BLOCK_SIZE;
                end
            end
            // Else if S is pressed, block is vertical, and move is in bounds
            else if ( ( sPressed == 1'b1 && ( BlockY + HEIGHT < GRID_END_Y  ) && ( I_block_state == 2'b11 || I_block_state == 2'b01 ) ) ) begin                
                if ( ( board_regs[board_reg_idx + 40][5] == 1'b0 ) ) begin
                    BlockY <= BlockY + BLOCK_SIZE;
                end
                else begin
                    BlockPlaced <= 1'b1; // if block is placed, need to update board, set addrs
                    BlockY <= BlockY;
                    

                end
            end
            // Else if S is pressed, block is horizontal, and move is in bounds
            else if ( ( sPressed == 1'b1 && ( BlockY + WIDTH < GRID_END_Y  ) && ( I_block_state == 2'b10 || I_block_state == 2'b00 ) ) ) begin                                
                if ( ( board_regs[board_reg_idx + 10][5] == 1'b0 ) && ( board_regs[board_reg_idx + 11][5] == 1'b0 ) 
                && ( board_regs[board_reg_idx + 12][5] == 1'b0 ) && ( board_regs[board_reg_idx + 13][5] == 1'b0 ) ) begin
                    BlockY <= BlockY + BLOCK_SIZE;
                end
                else begin
                    BlockPlaced <= 1'b1; // if block is placed, need to update board, set addrs
                    BlockY <= BlockY;
                    

                end
            end
            
            // ***** ROTATE *****
            if ( wPressed == 1'b1 ) begin

                if( I_block_state == 2'b11 ) begin
                    if ( ( ( BlockX - BLOCK_SIZE + 4*BLOCK_SIZE ) <= GRID_END_X ) && ( BlockX - BLOCK_SIZE >= GRID_START_X ) ) begin
                        if ( ( board_regs[board_reg_idx + 9][5] == 1'b0 ) && ( board_regs[board_reg_idx + 11][5] == 1'b0 ) 
                          && ( board_regs[board_reg_idx + 12][5] == 1'b0 ) ) begin
                            BlockX <= BlockX - BLOCK_SIZE;
                            BlockY <= BlockY + BLOCK_SIZE;
                            I_block_state <= 2'b00;
                        end
                    end
                end
                
                else if ( I_block_state == 2'b10 ) begin 
                    if ( ( ( BlockY - 2*BLOCK_SIZE ) >= GRID_START_Y ) ) begin
                    
                        if ( ( board_regs[board_reg_idx - 19][5] == 1'b0 ) && ( board_regs[board_reg_idx - 9][5] == 1'b0 ) 
                          && ( board_regs[board_reg_idx + 11][5] == 1'b0 ) ) begin
                            BlockX <= BlockX + BLOCK_SIZE;
                            BlockY <= BlockY - 2*BLOCK_SIZE;
                            I_block_state <= 2'b11;
                        end
                    end
                end
                
                else if ( I_block_state == 2'b01 ) begin
                    if ( ( ( BlockX - 2*BLOCK_SIZE + 4*BLOCK_SIZE ) <= GRID_END_X ) && ( BlockX - 2*BLOCK_SIZE >= GRID_START_X ) ) begin
                    
                        if ( ( board_regs[board_reg_idx + 18][5] == 1'b0 ) && ( board_regs[board_reg_idx + 19][5] == 1'b0 ) 
                              && ( board_regs[board_reg_idx + 21][5] == 1'b0 ) ) begin
                            BlockX <= BlockX - 2*BLOCK_SIZE;
                            BlockY <= BlockY + 2*BLOCK_SIZE;
                            I_block_state <= 2'b10;
                        end
                    end
                end
                
                else begin
                    if ( ( ( BlockY - BLOCK_SIZE ) >= GRID_START_Y ) ) begin
                    
                        if ( ( board_regs[board_reg_idx - 8][5] == 1'b0 ) && ( board_regs[board_reg_idx + 12 ][5] == 1'b0 ) 
                          && ( board_regs[board_reg_idx + 22][5] == 1'b0 ) ) begin
                            BlockX <= BlockX + 2*BLOCK_SIZE;
                            BlockY <= BlockY - BLOCK_SIZE;
                            I_block_state <= 2'b01;
                         end
                    end
                end
            end
            
            // reset signals
            frame_counter_xmove <= 26'b0;
            aPressed <= 1'b0;
            dPressed <= 1'b0;
            wPressed <= 1'b0;
            sPressed <= 1'b0;
            ready <= 1'b0;
        end
        else begin
            frame_counter_xmove <= frame_counter_xmove + 1; // Increment the counter
        end
    end
//    else begin
//        BlockX <= BlockX;
//        BlockY <= BlockY;
//    end
endmodule





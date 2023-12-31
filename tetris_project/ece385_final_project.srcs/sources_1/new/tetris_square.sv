// TETRIS square BLOCK MODULE
module tetris_square (
            input logic frame_clk, reset,
            input logic [7:0] keycode,
            input logic MoveValid, GenerateBlock,
            input logic active,
            output logic [9:0] BlockX, BlockY,
            output logic BlockPlaced, AttemptedMove,
            output logic [1:0] square_block_state,
            
            input logic [5:0] board_regs [200] );
      
    // Define L block height and width
    parameter HEIGHT = 2 * BLOCK_SIZE;
    parameter WIDTH = 2 * BLOCK_SIZE;
      
    logic [25:0] frame_counter;
    logic [25:0] frame_counter_xmove;
        
    logic dPressed = 1'b0;
    logic aPressed = 1'b0;
    logic wPressed = 1'b0;
    logic sPressed = 1'b0;
    logic ready = 1'b0;
    
    logic [9:0] GridX, GridY, board_reg_idx;
    
    
        
    logic square_block_state = 2'b00; //start state of block I up and down
    
    always_ff @ ( posedge frame_clk ) 
        begin

        BlockPlaced <= 1'b0;
        
        GridX <= ( BlockX - 240 ) / 16;
        GridY <= ( BlockY - 80 ) / 16;
        board_reg_idx <= GridX + ( GridY * 10 );
        
        // If we need to generate a block, start it at the top of the grid in the middle
        if ( GenerateBlock == 1'b1 ) begin
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
                if ( BlockY + BLOCK_SIZE + HEIGHT <= GRID_END_Y && ( board_regs[board_reg_idx + 20][5] == 1'b0 ) && ( board_regs[board_reg_idx + 21][5] == 1'b0 ) ) begin 
                    BlockY <= BlockY + BLOCK_SIZE;
                end 
                // If bottom is not in bounds, mark as placed, maintain current blockY
                else begin
                    BlockPlaced <= 1'b1; // if block is placed, need to update board, set addrs
                    BlockY <= BlockY;
                end
                frame_counter <= 26'b0;
            end 
            // Increment frame counter until it is at max
            else begin
                frame_counter <= frame_counter + 1; // Increment the counter
            end
        end
        
        // If we are at the move counter, and ( ( block vertical && in bounds ) || ( block horizontal and in bounds ) )
        if ( frame_counter_xmove == FRAME_COUNTER_XMOVE_MAX && ( ( BlockY + HEIGHT + BLOCK_SIZE <= GRID_END_Y ) ) ) begin //10
            
            //***** MOVE *****
            // If A is pressed and that move is in bounds and not state 0 *** state 0 has width of -2 block size
            if ( aPressed == 1'b1 && ( BlockX - BLOCK_SIZE ) >= GRID_START_X && ( board_regs[board_reg_idx - 1][5] == 1'b0 ) && ( board_regs[board_reg_idx + 9][5] == 1'b0 ) ) begin                
                BlockX <= BlockX - BLOCK_SIZE;
            end
            // Else if D is pressed, block is vertical, and move is in bounds
            else if ( ( dPressed == 1'b1 && ( BlockX + 3*BLOCK_SIZE ) <= GRID_END_X ) && ( board_regs[board_reg_idx + 2][5] == 1'b0 ) && ( board_regs[board_reg_idx + 12][5] == 1'b0 ) ) begin                 
                 
                BlockX <= BlockX + BLOCK_SIZE;
            end
           
            // Else if S is pressed, block is vertical, and move is in bounds
            else if ( ( sPressed == 1'b1 && ( BlockY + HEIGHT + BLOCK_SIZE <= GRID_END_Y  ) ) ) begin                
                if( ( board_regs[board_reg_idx + 20][5] == 1'b0 ) && ( board_regs[board_reg_idx + 21][5] == 1'b0 ) ) begin
                    BlockY <= BlockY + BLOCK_SIZE;
                end
                else begin 
                    BlockPlaced <= 1'b1; // if block is placed, need to update board, set addrs
                    BlockY <= BlockY;
                end
            end
            
            // ***** ROTATE *****
            if ( wPressed == 1'b1 ) begin

                if( square_block_state == 2'b11 ) begin
                    square_block_state <= 2'b00;
                end
                
                else if ( square_block_state == 2'b10 ) begin 
                    square_block_state <= 2'b11;
                end
                
                else if ( square_block_state == 2'b01 ) begin
                    square_block_state <= 2'b10;
                    end
                
                else begin
                    square_block_state <= 2'b01;
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
endmodule

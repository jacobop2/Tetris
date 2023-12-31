module fsm (   
                input logic Clk,
                input logic [7:0] keycode,
                input logic BlockPlaced,
				input logic GameOver,

                
                output logic reset, generateBlockSelect, showStartScreen, showEndScreen
				);

	enum logic [4:0] { Start,
					   Reset,
	                   Game,
	                   Generate_Block_Wait,
	                   Generate_Block_Select,
					   Game_Over
	                   }   State, Next_state;   // Internal state logic
		
	always_ff @ (posedge Clk)
	begin
		if ( 8'h2C == keycode ) // if spacebar hit 
			State <= Start;
		else if ( GameOver == 1'b1 )
			State <= Game_Over;
		else 
			State <= Next_state;
	end
   
	always_comb
	begin 
		//Default next state is staying at current state
		Next_state = State;
		
		//Default controls signal values
		generateBlockSelect = 1'b0;
		reset = 1'b0;
		showStartScreen = 1'b0;
		showEndScreen = 1'b0;
	
		// Assign next state
		unique case (State)
			Start : 
				if ( keycode != 8'h00 )
					Next_state = Reset;
			Reset : 
				if ( keycode == 8'h28 ) // if enter key is pressed
					Next_state = Generate_Block_Wait;
			Game : 
			    if ( BlockPlaced == 1'b1 ) begin
			        //Next_state = Game_Over;
			        Next_state = Generate_Block_Wait;
			    end
			Generate_Block_Wait :
			    Next_state = Generate_Block_Select;
			Generate_Block_Select :
			    Next_state = Game;
			Game_Over : 
			     if ( keycode != 8'h2C )
			         Next_state = Start;
			//default :
		endcase
		
		// Assign control signals based on current state
		case (State)
			Start:
				begin
					showStartScreen = 1'b1;
					showEndScreen = 1'b0;
				end
			Reset: 
			    begin
			        reset = 1'b1;
			        generateBlockSelect = 1'b0;
			    end 
			Game: 
				begin 
				    reset = 1'b0;
				    generateBlockSelect = 1'b0;
				end
            Generate_Block_Select :
     	        begin
		            generateBlockSelect = 1'b1;
		            reset = 1'b0;
		        end
            Generate_Block_Wait :
		        begin
		            generateBlockSelect = 1'b0;
		            reset = 1'b0;
		        end
			Game_Over :
				begin
					showStartScreen = 1'b1;
					showEndScreen = 1'b1;
				end
			default : ;
		endcase
	end 
	
endmodule




//module fsm (   
//                input logic Clk,
//                input logic [7:0] keycode,
//                input logic BlockPlaced, AttemptedMove,
//                input logic [7:0] addr1, addr2, addr3, addr4,
//                input logic [7:0] raddr1, raddr2, raddr3, raddr4,
//                input logic board_ram_read_data,
                
//                output logic reset,
//                output logic board_ram_we, board_ram_write_data,
//                output logic moveValid, generateBlock,
//                output logic [7:0] board_ram_write_addr, board_ram_read_addr,
//                output logic generateBlockSelect
//				);

//	enum logic [4:0] { Reset,
//	                   Game,
//	                   Generate_Block_Wait,
//	                   Generate_Block_Select
//	                   }   State, Next_state;   // Internal state logic
		
//	always_ff @ (posedge Clk)
//	begin
//		if (  8'h2C == keycode ) // if spacebar hit 
//			State <= Reset;
//		else 
//			State <= Next_state;
//	end
   
//	always_comb
//	begin 
//		//Default next state is staying at current state
//		Next_state = State;
		
//		//Default controls signal values
//		board_ram_we = 1'b0;
//		board_ram_write_data = 1'b0;
//		board_ram_write_addr = 8'b00000000;
//		board_ram_read_addr = 8'b00000000;
		
//		generateBlock = 1'b0;
//		generateBlockSelect = 1'b0;
//		moveValid = 1'b1;
//		reset = 1'b0;
	
//		// Assign next state
//		unique case (State)
//			Reset : 
//				if ( keycode == 8'h28 ) // if enter key is pressed
//					Next_state = Generate_Block_Wait;
////			    else
////			        Next_state = Reset;
//			Game :
//			    if ( BlockPlaced == 1'b1 ) begin
//			        Next_state = Generate_Block_Wait;
//			    end
////			    else if ( AttemptedMove == 1'b1 ) begin
////			        Next_state = Board_Read1;
////			    end
////			    else 
////			         Next_state = Game; 
//			Generate_Block_Wait :
//			    Next_state = Generate_Block_Select;
//			Generate_Block_Select :
//			    Next_state = Game;
////			Board_Write1 :
////			    Next_state = Board_Write2;
////			Board_Write2 :
////			    Next_state = Board_Write3;
////	        Board_Write3 :
////			    Next_state = Board_Write4;
////			Board_Write4 :
////			    Next_state = Generate_Block;
////			Generate_Block :
////			    Next_state = Generate_Block_2;
////			Generate_Block_2 :
////			    Next_state = Game;
////		    Board_Read1 :
////			    Next_state = Board_Read2;
////			Board_Read2 :
////			    Next_state = Board_Read3;
////	        Board_Read3 :
////			    Next_state = Board_Read4;
////			Board_Read4 :
////			    Next_state = Game;
//			default :;
//		endcase
		
//		// Assign control signals based on current state
//		case (State)
//			Reset: 
//			    begin
//			        reset = 1'b1;
//			        generateBlock = 1'b0;
//			    end 
//			Game: 
//				begin 
//				    reset = 1'b0;
//				    generateBlock = 1'b0;
//				end
////			Board_Write1: 
////				begin 
////                    board_ram_we = 1'b1;
////                    board_ram_write_addr = addr1;
////                    board_ram_write_data = 1'b1;
////				end
////		    Board_Write2: 
////				begin 
////                    board_ram_we = 1'b1;
////                    board_ram_write_addr = addr2;
////                    board_ram_write_data = 1'b1;
////				end
////		    Board_Write3: 
////				begin 
////                    board_ram_we = 1'b1;
////                    board_ram_write_addr = addr3;
////                    board_ram_write_data = 1'b1;
////				end
////			Board_Write4: 
////				begin 
////                    board_ram_we = 1'b1;
////                    board_ram_write_addr = addr4;
////                    board_ram_write_data = 1'b1;
////				end	
//            Generate_Block_Select :
//     	        begin
//		            generateBlockSelect = 1'b1;
//		            reset = 1'b0;
//		        end
//            Generate_Block_Wait :
//		        begin
//		            generateBlockSelect = 1'b0;
//		            reset = 1'b0;
//		        end
////			Board_Read1: 
////				begin 
////				    if ( raddr1 < 200 )
////                        board_ram_read_addr = raddr1;
////                    if ( board_ram_read_data )
////                        moveValid = 1'b0;
////				end
////		    Board_Read2: 
////				begin
////				    if ( raddr2 < 200 ) 
////                        board_ram_read_addr = raddr2;
////                    if ( board_ram_read_data )
////                        moveValid = 1'b0;
////				end
////		    Board_Read3: 
////				begin 
////				    if ( raddr3 < 200 )
////                        board_ram_read_addr = raddr3;
////                    if ( board_ram_read_data )
////                        moveValid = 1'b0;
////				end
////			Board_Read4: 
////				begin
////				    if ( raddr4 < 200 ) 
////                        board_ram_read_addr = raddr4;
////                    if ( board_ram_read_data )
////                        moveValid = 1'b0;
////				end	

//			default : ;
//		endcase
//	end 
	
//endmodule

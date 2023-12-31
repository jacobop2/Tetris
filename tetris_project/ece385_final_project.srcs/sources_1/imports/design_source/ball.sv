//-------------------------------------------------------------------------
//    Ball.sv                                                            --
//    Viral Mehta                                                        --
//    Spring 2005                                                        --
//                                                                       --
//    Modified by Stephen Kempf 03-01-2006                               --
//                              03-12-2007                               --
//    Translated by Joe Meng    07-07-2013                               --
//    Modified by Zuofu Cheng   08-19-2023                               --
//    Fall 2023 Distribution                                             --
//                                                                       --
//    For use with ECE 385 USB + HDMI Lab                                --
//    UIUC ECE Department                                                --
//-------------------------------------------------------------------------

      
   
//    always_ff @ (posedge frame_clk or posedge Reset) //make sure the frame clock is instantiated correctly
//    begin: Move_Ball
//        if (Reset)  // asynchronous Reset
//        begin 
//            Ball_Y_Motion <= 10'd0; //Ball_Y_Step; // changed from 0 to
//			Ball_X_Motion <= 10'd1; //Ball_X_Step;
//			BallY <= Ball_Y_Center;
//			BallX <= Ball_X_Center;
//        end
           
//        else 
//        begin 
                
//				 if ( (BallY + BallS) >= Ball_Y_Max )  // Ball is at the bottom edge, BOUNCE!
//					  Ball_Y_Motion <= (~ (Ball_Y_Step) + 1'b1);  // 2's complement.
					  
//				 else if ( (BallY - BallS) <= Ball_Y_Min )  // Ball is at the top edge, BOUNCE!
//					  Ball_Y_Motion <= Ball_Y_Step;
					  
//				  else if ( (BallX + BallS) >= Ball_X_Max )  // Ball is at the Right edge, BOUNCE!
//					  Ball_X_Motion <= (~ (Ball_X_Step) + 1'b1);  // 2's complement.
					  
//				 else if ( (BallX - BallS) <= Ball_X_Min )  // Ball is at the Left edge, BOUNCE!
//					  Ball_X_Motion <= Ball_X_Step;
					  
//				 else begin
//					  Ball_Y_Motion <= Ball_Y_Motion;  // Ball is somewhere in the middle, don't bounce, just keep moving
//			          Ball_X_Motion <= Ball_X_Motion; // added this line
			     
//			                              				 //modify to control ball motion with the keycode
//                     if (keycode == 8'h1A) begin
//                         Ball_Y_Motion <= -10'd1;
//                         Ball_X_Motion <= 10'd0;
//                     end
//                     else if (keycode == 8'h04) begin
//                         Ball_X_Motion <= -10'd1;
//                         Ball_Y_Motion <= 10'd0;
//                     end
//                     else if (keycode == 8'h16) begin
//                         Ball_Y_Motion <= 10'd1;
//                         Ball_X_Motion <= 10'd0;
//                     end
//                     else if (keycode == 8'h07) begin
//                         Ball_X_Motion <= 10'd1;
//                         Ball_Y_Motion <= 10'd0;
//                     end
			     
//			     end
					  
////			     Ball_X_Motion <= 10'd0; //added these
////                 Ball_Y_Motion <= 10'd0;
				 
//				 BallY <= (BallY + Ball_Y_Motion);  // Update ball position
//				 BallX <= (BallX + Ball_X_Motion);
			
//		end  
//    end
      
//endmodule

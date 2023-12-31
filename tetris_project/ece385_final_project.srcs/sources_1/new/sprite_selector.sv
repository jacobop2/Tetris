`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2023 03:20:12 PM
// Design Name: 
// Module Name: sprite_selector
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

module sprite_selector(
                        input logic Clk,
                        input logic select,
                        output logic [6:0] sprite_select, long_sprite_select );
     logic [2:0] counter = 3'b000;
     always_ff @(posedge Clk) begin 
             if ( select == 1'b1 ) begin 
//                  sprite_select <= 7'b0000001;
//                  long_sprite_select <= 7'b0000001;
                if ( counter == 3'b000 ) begin
                    counter <= 3'b001;
                    sprite_select <= 7'b0000001;
                    long_sprite_select <= 7'b0000001;
                end
                else if ( counter == 3'b001 ) begin
                    counter <= 3'b010;
                    sprite_select <= 7'b0000010;
                    long_sprite_select <= 7'b0000010;
                end
                
                else if ( counter == 3'b010 ) begin
                    counter <= 3'b011;
                    sprite_select <= 7'b0000100;
                    long_sprite_select <= 7'b0000100;
                end
                
                 else if ( counter == 3'b011 ) begin
                    counter <= 3'b100;
                    sprite_select <= 7'b0001000;
                    long_sprite_select <= 7'b0001000;
                end
                
                else if ( counter == 3'b100 ) begin
                    counter <= 3'b101;
                    sprite_select <= 7'b0010000;
                    long_sprite_select <= 7'b0010000;
                end
                
                else if ( counter == 3'b101 ) begin
                    counter <= 3'b110;
                    sprite_select <= 7'b0100000;
                    long_sprite_select <= 7'b0100000;
                end
                
                else if ( counter == 3'b110 ) begin
                    counter <= 3'b000;
                    sprite_select <= 7'b1000000;
                    long_sprite_select <= 7'b1000000;
                end
                
                else begin
                    counter <= 3'b000;
                end
                
             end
             
             else begin
                //counter <= $urandom_range(0,3);
                sprite_select <= 7'b0000000;
                long_sprite_select <= long_sprite_select;
            end
               
    end
endmodule


//module random( input logic Clk,
//               input logic select,
//               output int random );
               
//   always_ff @ ( posedge Clk ) begin
//        static int random_reg_internal;
        
//        if (select == 1'b0) begin
//            // Only update random when select is low
//            random_reg_internal = $urandom_range(1,7);
//        end

//        random = random_reg_internal;
//    end
//endmodule






//***********************************start for rand implementstion **********//
//was only displaying default case 
//module sprite_selector(
//                        input logic Clk,
//                        input logic select,
//                        output logic [6:0] sprite_select, long_sprite_select );
//     int random;
//     logic counter = 1'b0;
     
//     static int random_reg_internal;
     
//     random r (
//                .Clk(Clk),
//                .select(select),
//                .random(random) );

//     always_ff @(posedge Clk) begin 
////         sprite_select <= 7'b0000001;
//       // if ( counter == 3'd4 || counter == 3'd3 ) begin
//             if ( select == 1'b1 ) begin //&& random != 1'd0
////                if ( counter == 1'b0 ) begin
////                    counter <= 1'b1;
////                    sprite_select <= 7'b0000001;
////                    long_sprite_select <= 7'b0000001;
////                end
////                else if ( counter == 1'b1 ) begin
////                    counter <= 1'b0;
////                    sprite_select <= 7'b0001000;
////                    long_sprite_select <= 7'b0001000;
////                end
                
////                else begin
////                    counter <= 1'b0;
////                end
                
//                case ( random )
//                    1: begin
//                        sprite_select = 7'b0000001;
//                        long_sprite_select = 7'b0000001;
//                    end
//                    2: begin
//                        sprite_select = 7'b0000001;
//                        long_sprite_select = 7'b0000001;
//                    end
//                    3: begin 
//                        sprite_select = 7'b0000001;
//                        long_sprite_select = 7'b0000001;;
//                    end
//                    4: begin 
//                        sprite_select = 7'b0001000;
//                        long_sprite_select = 7'b0001000;
//                    end
//                    5: begin
//                        sprite_select = 7'b0001000;
//                        long_sprite_select = 7'b0001000;
//                    end
//                    6: begin 
//                        sprite_select = 7'b0001000;
//                        long_sprite_select = 7'b0001000;
    
//                    end
//                    7: begin
//                        sprite_select = 7'b0001000;
//                        long_sprite_select = 7'b0001000;
//                    end
                    
//                    default: begin
//                        sprite_select = 7'b0001000;
//                        long_sprite_select = 7'b0001000;
//                    end
////                    1: sprite_select <= 7'b0000010;
////                    2: sprite_select <= 7'b0000100;
////                    3: sprite_select <= 7'b0001000;
////                    4: sprite_select <= 7'b0010000;
////                    5: sprite_select <= 7'b0100000;
////                    6: sprite_select <= 7'b1000000;
//                endcase
                
//             end
             
//             else begin
        
//                // Only update random when select is low
//                random_reg_internal <= $urandom_range(1,7);
//                random <= random_reg_internal;
//                sprite_select <= 7'b0000000;
//                long_sprite_select <= long_sprite_select;
//            end
//            //counter <= 3'd0;
//         //end
         
         
//    end
//endmodule

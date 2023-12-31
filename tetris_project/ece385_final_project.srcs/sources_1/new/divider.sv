`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2023 01:14:18 PM
// Design Name: 
// Module Name: divider
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

module clock_divider (
    input logic clk_25MHz,  // 25 MHz input clock
    output logic clk_60Hz  // 60 Hz output clock
);
   
    logic [21:0] counter;
    
    always_ff @(posedge clk_25MHz) begin
        if (counter == 416666) begin
            counter <= 0;
            clk_60Hz <= ~clk_60Hz;  // Invert the 60 Hz clock to create the square wave
        end
        else begin
            counter <= counter + 1;
        end
    end
endmodule

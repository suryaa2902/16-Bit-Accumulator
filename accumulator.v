`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    12:12:23 05/16/21
// Design Name:    
// Module Name:    accumulator
// Project Name:   
// Target Device:  
// Tool versions:  
// Description:
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module accumulator(
    input [15:0] in,
    input clk, reset,
    output reg [15:0] out
    );
    always@(posedge clk) 
    begin
        if(reset) out <= 0;
        else out <= out + in;
    end
endmodule

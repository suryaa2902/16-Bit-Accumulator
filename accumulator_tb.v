`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14:06:54 05/16/21
// Design Name: 
// Module Name: accumulator_tb
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


`timescale 1ns/10ps 
module accumulator_tb; 
reg clk, reset; 
reg [15:0] in; 
wire [15:0] out; 
accumulator dft(in, out, clk, reset); 
initial begin 
clk =1'b0; 
forever begin 
#5 clk = ~clk; 
end 
end 
initial begin 
#50 $finish; 
end 
// Simulate the input signals 
initial begin 
#0 reset<=1; 
in<=1; 
#5 reset<=0; 
end 
endmodule 

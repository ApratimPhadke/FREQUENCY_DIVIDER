`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2025 03:32:26 PM
// Design Name: 
// Module Name: CLK_DIVIDER
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


module CLK_DIVIDER #(parameter N=4)(
input wire clk,
input wire rst,
output reg clk_out
);
integer count ;
always @(posedge clk) begin 
if(rst) begin 
count<=0;
clk_out<=0;
end else begin 
if(count == (N/2 -1)) begin 
clk_out = ~clk_out ;
count <=count +1;
end 
end 
end 
endmodule

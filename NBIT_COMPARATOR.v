`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2023 18:47:12
// Design Name: 
// Module Name: NBIT_COMPARATOR
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

//this is the verilog code of 4 bit magnitude comparator
module NBIT_COMPARATOR(
    input [3:0] a,
    input [3:0] b,
    output reg y2,y1,y0//y[0] indicates a>b  ,y[1] denotes a=b ,y[2] indicates a<b
    );
  always@(*)
  begin
  if(a>b) 
  begin 
  y0=1'b1;
  y1=1'b0;
  y2=1'b0;
  end
  if(a==b) 
    begin 
    y0=1'b0;
    y1=1'b1;
    y2=1'b0;
    end
    if(a<b) 
      begin 
      y0=1'b0;
      y1=1'b0;
      y2=1'b1;
      end
   end
endmodule

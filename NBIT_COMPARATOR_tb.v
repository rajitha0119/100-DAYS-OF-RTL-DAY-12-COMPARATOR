`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2023 18:59:44
// Design Name: 
// Module Name: NBIT_COMPARATOR_tb
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


module NBIT_COMPARATOR_tb();
reg [3:0]a,b;
wire y2,y1,y0;

NBIT_COMPARATOR rama(.a(a),.b(b),.y0(y0),.y1(y1),.y2(y2));
initial begin
$monitor (a,b,y2,y1,y0);
end

initial begin

a=4'b1000;b=4'b1010;
#100; a=4'b0100;b=4'b1011;
#100; a=4'b1111; b=4'b1100;
#100 ; a=4'b0011;b=4'b1111;
end

endmodule

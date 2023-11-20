`timescale 1ns/1ps

module Demultiplexer(input [1:0]sel, F, output reg A, B, C, D);
   always @(sel, F)
   begin 
   A=0;
   B=0;
   C=0;
   D=0;
     case(sel)

	2'b00 : A = F;
	2'b01 : B = F;
	2'b10 : C = F;
	2'b11 : D = F;

	endcase
	end
endmodule


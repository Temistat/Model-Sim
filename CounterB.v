`timescale 1ns/1ps
module CounterB (input clk,F,output [3:0] out_come);

reg[3:0]counter = 0;
assign out_come = counter;

always@(posedge clk)
begin
if (F == 1)
   counter = counter + 1;
else
   counter = counter - 1;

end

endmodule

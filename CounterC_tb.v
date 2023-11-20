`timescale 1ns/1ps
module CounterC_tb;

reg clk,F,P;
wire [3:0] out;

CounterC dut(clk,F,P,out);

always #5 clk = ~clk;

initial
begin

$monitor("out=%b",out);
clk=0;
F=0;P=0;
#100 F=0;P=1;
#100 F=1;P=0;
#100 F=1;P=1;
#400 $finish;
end

endmodule

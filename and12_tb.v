`timescale 1ns/1ps

module and12_tb();

reg a,b;
wire out;

and12 dut(a,b,out);

initial

begin

$monitor("Value of a=%b, b=%b, out=%b", a,b,out);
#0 a=0; b=0; // time t = 0 ns
#5 a=0; b=1; // time t = 5 ns
#10 a=1; b=0; // time t = 15ns
#10 a=1; b=1; // time t = 25ns
#20 $finish; // time t = 45ns

end

endmodule

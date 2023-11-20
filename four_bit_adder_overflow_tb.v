`timescale 1ns/1ps
module four_bit_adder_overflow_tb;

reg [3:0] operand1;
reg [3:0] operand2;
wire [3:0] sum;
wire overflow;

four_bit_adder_overflow uut(
    .operand1(operand1),
    .operand2(operand2),
    .sum(sum),
    .overflow(overflow)
);

initial begin
  $monitor("operand1 = %b , operand 2 = %b , sum = %b , overflow = %b" , operand1,operand2,sum,overflow);

	operand1 = 4'b0101; // +5 in 2's complement	
	operand2 = 4'b0010; // +2 in 2's complement
	#10;



	operand1 = 4'b1101; // -3 in 2's complement	
	operand2 = 4'b1010; // -6 in 2's complement
	#10;


	operand1 = 4'b0111; // +7 in 2's complement	
	operand2 = 4'b0111; // +7 in 2's complement
	#10;

  end

endmodule


module four_bit_adder_overflow(
    input [3:0] operand1,
    input [3:0] operand2,
    output [3:0] sum,
    output overflow
);

wire [3:0] temp_sum;
wire carry_out;

 assign {carry_out,temp_sum} = operand1 + operand2;

assign sum = temp_sum;
assign overflow = (operand1[3] & operand2[3] & ~sum[3]) | (~operand1[3] & ~operand2[3] & sum[3]);

endmodule


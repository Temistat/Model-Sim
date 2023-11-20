module decoder_tb;

reg [2:0]a;
wire [7:0]z;

decoder_conditional dut(z,a);

initial
begin

$monitor ("a=%b,z=%b",a,z);

#0 a=3'b000;
#10 a=3'b001;
#10 a=3'b010;
#10 a=3'b011;
#10 a=3'b100;
#10 a=3'b101;
#10 a=3'b110;
#10 a=3'b111;
#10 $finish;

end

endmodule

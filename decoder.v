module decoder(
  input wire [3:0] in,  // 4-bit input (0-9)
  output reg [6:0] out // 7-bit output
);

 always @(in) // executed whenever there is a change in the input - in
   begin
   case (in) // case - conditional statement,checks the various input combinations
	4'b0000: out = 7'b1000000; // in = 0
        4'b0001: out = 7'b1111001; // in = 1
        4'b0010: out = 7'b0100100; // in = 2
        4'b0011: out = 7'b0110000; // in = 3
        4'b0100: out = 7'b0011001; // in = 4
        4'b0101: out = 7'b0010010; // in = 5
        4'b0110: out = 7'b0000010; // in = 6
        4'b0111: out = 7'b1111000; // in = 7
        4'b1000: out = 7'b0000000; // in = 8
        4'b1001: out = 7'b0011000; // in = 9
   default: out = 7'b1111111; 

    endcase
    end

endmodule

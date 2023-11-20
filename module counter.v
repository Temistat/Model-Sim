//Code design here 

module counter(
   input wire clk,           // Clock input
   output reg [3:0] count    // 4-bit counter output
);

initial begin
count = 4'b0000;
end


always @(posedge clk)
  begin
     if (count == 4'b1001) // when the count reaches 9, reset to 0

	count <=4'b0000;
    else
	count <= count + 1; // increment the count
end 

endmodule
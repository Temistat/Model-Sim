`timescale 1ns/1ps 
module counter_tb;
    reg clk;
    wire [3:0] count;

    // Instantiate the counter module
  counter uut(clk,count);

    // Clock generation
    always begin
	#5 clk= ~clk; // Toggle the clock every 5 time units
    end

    initial begin
	clk = 0;
	#100 $finish;
     end

     // Display count in the console
     always@(posedge clk) begin
	$display("Count = %d", count);
      end
endmodule
	 

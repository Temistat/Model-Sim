module lab_five_part_two(
input wire clk,
output reg [3:0] count
);

initial begin
count = 4'b0000;
end


always @ (posedge clk)
begin
if (count == 4'b1111)
 count <= 4'b0000;
 else
 count <= count + 1;
 end
 
endmodule


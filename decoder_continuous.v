module decoder_continuous(
   input [2:0] a,
   output [7:0] z
);

assign z[0]= ~a[2]&~a[1]&~a[0];
assign z[1]= ~a[2]&~a[1]&a[0];
assign z[2]= ~a[2]&a[1]&~a[0];
assign z[3]= ~a[2]&a[1]&a[0];
assign z[4]= a[2]&~a[1]&~a[0];
assign z[5]= a[2]&~a[1]&a[0];
assign z[6]= a[2]&a[1]&~a[0];
assign z[7]= a[2]&a[1]&a[0];

endmodule


module decoder_4_16(
	input [3:0]in,
	output [15:0]out
);

assign out=16'b1<<in;

endmodule


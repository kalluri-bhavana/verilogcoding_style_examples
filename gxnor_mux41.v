module gxnor_mux41(
	input a,
	input b,
	output y
);

wire [1:0]sel;
assign sel={a,b};

assign y=(sel==2'b00)?1'b1:
	 (sel==2'b01)?1'b0:
	 (sel==2'b10)?1'b0:
	              1'b1;

endmodule


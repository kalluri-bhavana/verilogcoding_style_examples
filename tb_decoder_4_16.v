/* verilator lint_off WIDTHEXPAND */
/*verilator lint_off unusedsignal*/

module tb_decoder_4_16();

reg [3:0] in;
wire [15:0] out;

decoder_4_16 dut(
	.in(in),
	.out(out)
);

initial begin
	$dumpfile("tb_decoder_4_16.vcd");
	$dumpvars(0,tb_decoder_4_16);

	in=4'b0001;
	#10;
	in=4'b1000;
	#10;
	in=4'b1001;
	#10;
	in=4'b0010;
	#10;
	in=4'b1111;
	#10;
	in=4'b0011;
	#10;
	in=4'b1011;
	#10;
	in=4'b1110;
	#10;

	$finish;
end
endmodule

/* verilator lint_on WIDTHEXPAND */
/*verilator lint_on unusedsignal*/


/*verilator lint_off unusedsignal*/
module tb_toggle_ff();
reg clk;
reg reset;
reg t_in;
wire q;

toggle_ff dut(
	.clk(clk),
	.reset(reset),
	.t_in(t_in),
	.q(q)
);

initial begin
	clk=0;
	forever #5 clk=~clk;
end

initial begin
	$dumpfile("tb_toggle_ff.vcd");
	$dumpvars(0,tb_toggle_ff);

	reset=1;
	t_in=0;
	#10 reset=0;

	#10 t_in=1;
	#10 t_in=0;
	#10 t_in=1;
	#10 t_in=1;
	#10 t_in=0;

	#10 reset=1;
	#10 reset=0;
	#10 t_in=1;

	#50 $finish;
end
endmodule
/*verilator lint_on unusedsignal*/

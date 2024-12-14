module tb_gray_code_counter();

reg clk;
reg rst;
/*verilator lint_off unusedsignal*/
wire [7:0]out;
/*verilator lint_on unusedsignal*/

gray_code_counter dut(clk,rst,out);

always begin
	#5 clk<=~clk;
end

initial begin
	$dumpfile("tb_gray_code_counter.vcd");
	$dumpvars(0,tb_gray_code_counter);

	clk=0;
	rst=0;

	rst=1; #10; rst=0; #10;

	repeat(20) begin
		#10;
	end

	$finish;

end
endmodule


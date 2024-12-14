/* verilator lint_off UNUSEDSIGNAL */
module tb_encoder4_2();
reg [3:0]din;
wire [1:0]dout;

encoder4_2 dut(.din(din), .dout(dout));

initial begin
	$dumpfile("tb_encoder4_2.vcd");
	$dumpvars(0,tb_encoder4_2);

din=4'b0001; #10;
din=4'b0010; #10;
din=4'b0011; #10;
din=4'b0100; #10;
din=4'b0000; #10;
din=4'b1000; #10;

$finish;

end

endmodule
/*Verilator lint_on UNUSEDSIGNAL*/


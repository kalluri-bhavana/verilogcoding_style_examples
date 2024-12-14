module tb_mux8x1();

reg [7:0]din;
reg [2:0]sel;
/*verilator lint_off UNUSEDSIGNAL*/
wire dout;
/*Verilator lint_on UNUSEDSIGNAL*/
mux8x1 dut(.dout(dout), .din(din), .sel(sel));

initial begin
	$dumpfile("tb_mux8x1.vcd");
	$dumpvars(0,tb_mux8x1);
        din=8'b00000000; sel=3'b000; #10;
	din=8'b10101010; sel=3'b001; #10;
	din=8'b00000001; sel=3'b000; #10;
	din=8'b00000010; sel=3'b001; #10;
        din=8'b00000100; sel=3'b010; #10;
	din=8'b10101010; sel=3'b101; #10;
        din=8'b00001000; sel=3'b011; #10;
        din=8'b00010000; sel=3'b100; #10;
        din=8'b00100000; sel=3'b101; #10;
        din=8'b01000000; sel=3'b110; #10;
	din=8'b01010101; sel=3'b010; #10;
        din=8'b10000000; sel=3'b111; #10;
        din=8'b10000010; sel=3'b111; #10;

	$finish;
end
endmodule



module tb_32bit_adder;

reg [31:0]a,b;
wire [31:0]sum;

adder_32bit dut(.a(a),.b(b),.sum(sum));

initial begin
	$dumpfile("tb_32bit_adder.vcd");
	$dumpvars(0,tb_32bit_adder);

	a=32'h00000001; b=32'h00000001; #10;
	$display("a=%h,b=%h,sum=%h",a,b,sum);

	a=32'hffffffff; b=32'h00000001; #10;
	$display("a=%h,b=%h,sum=%h",a,b,sum);
        
	a=32'h12345678; b=32'h87654321; #10;
	$display("a=%h,b=%h,sum=%h",a,b,sum);

	a=32'hDEADBEEF; b=32'hCAFEBABE; #10;
	$display("a=%h,b=%h,sum=%h",a,b,sum);

	$finish;

end
endmodule


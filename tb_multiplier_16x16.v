module tb_multiplier_16x16();

reg [15:0]a;
reg [15:0]b;
wire [31:0]product;

multiplier_16x16 dut(.a(a), .b(b), .product(product));

initial begin
	$dumpfile("tb_multiplier_16x16.vcd");
	$dumpvars(0,tb_multiplier_16x16);

	a=16'h0001; b=16'h0001; #10;
	$display("a=%h, b=%h, product=%h", a,b,product);

	a=16'hFFFF; b=16'h0002; #10;
        $display("a=%h, b=%h, product=%h", a,b,product);

	a=16'h1234; b=16'h5678; #10;
        $display("a=%h, b=%h, product=%h", a,b,product);

	a=16'h8000; b=16'h8000; #10;
        $display("a=%h, b=%h, product=%h", a,b,product);

	$finish;

end
endmodule


module dlatch_rst(
	input d,
	input clk,
	input rst,
	output reg q
);

always@(clk or rst)begin
	if(rst)begin
		q<=0;
	end
	else if(clk)begin
		q<=d;
	end
end
endmodule


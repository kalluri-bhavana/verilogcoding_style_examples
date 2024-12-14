module counter_32bit_ov(
	input clk,
	input reset,
	output reg[31:0]count,
	output reg overflow
);

always@(posedge clk or posedge reset)
begin
	if(reset)
	begin
		count<=32'b0;
		overflow<=1'b0;
	end
	else begin
		if(count==32'hffffffff)begin
			overflow<=1'b1;
			count<=32'b0;
		end else begin
			count<=count+1;
			overflow<=1'b0;
		end
	end
end
endmodule


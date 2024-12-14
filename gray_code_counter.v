module gray_code_counter(
	input clk,
	input rst,
	output reg [7:0]out
);

reg [7:0]count;
reg [7:0]gray;

always@(posedge clk or posedge rst)begin
	if(rst)begin
		count<=8'b0;
		out<=8'b0;
	end else begin
		count<=count+1'b1;

		gray[7]<=count[7];
		gray[6]<=count[7]^count[6];
		gray[5]<=count[6]^count[5];
		gray[4]<=count[5]^count[4];
		gray[3]<=count[4]^count[3];
		gray[2]<=count[3]^count[2];
		gray[1]<=count[2]^count[1];
		gray[0]<=count[1]^count[0];

		out<=gray;

	end
end
endmodule


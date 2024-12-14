module toggle_ff(
       input clk,
       input reset,
       input t_in,
       output reg q
);

//reg q;

always@(posedge clk)begin
	if(reset)begin
		q<=1'b0;
	end else if(t_in)begin
		q<=~q;
	end
end
endmodule



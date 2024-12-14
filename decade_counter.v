module decade_counter(en, clock, rst, count);
input en, rst, clock; 
 output reg [3:0] count;
  
  always @( posedge clock or negedge rst)
	  if(!rst)
		  count <= 4'h0;
	  else
	  begin
		  if(en)
		  begin
			  if(count <4'hA) 
				  count <= count + 4'd1;
			  else
				  count <= 4'd0;
		  end
		  else
			  count <= 4'd0;
	  end
endmodule


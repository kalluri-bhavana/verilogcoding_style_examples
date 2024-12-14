module client_arbiter(
	input clock,
	input reset_n,
	input priority_sel,
	input client1_req,
	input client2_req,
	output o_grant1,
	output o_grant2);
reg [1:0]curr_state,next_state;
reg client1_req_d,client2_req_d;
parameter IDLE=2'D0,CLIENT1=2'd1,CLIENT2=2'd2;
always@(client1_req_d,client2_req_d,curr_state,priority_sel)
begin
	case(curr_state)
		IDLE:if(priority_sel&&client1_req_d)
		next_state=CLIENT1;
	else if(client2_req_d)
		next_state=CLIENT2;
	else
		next_state=IDLE;
	CLIENT1:if(client2_req_d)
	next_state=CLIENT2;
else
	next_state=IDLE;
CLIENT2:if(client1_req_d)
        next_state=CLIENT1;
else
        next_state=IDLE;
default:next_state=IDLE;
endcase
end
always@(posedge clock or negedge reset_n)
begin
	if(!reset_n)begin
		curr_state<=2'd0;
	end
	else begin
		curr_state<=next_state;
	end
end
assign o_grant1=(curr_state==CLIENT1);
assign o_grant2=(curr_state==CLIENT2);
always@(posedge clock or negedge reset_n)
begin
	if(!reset_n)begin
		client1_req_d<=1'd0;
		client2_req_d<=1'd0;
	end
	else begin
		if(o_grant1)
			client1_req_d<=1'd0;
		else if(client1_req)
			client1_req_d<=1'd1;
		if(o_grant2)
                        client2_req_d<=1'd0;
                else if(client2_req)
                        client2_req_d<=1'd1;
	end
end
endmodule





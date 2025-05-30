module sipo(
input clk,
input rst,
input sin,
output reg[3:0] q
);
always @(posedge clk or posedge rst) begin
	if (rst)
		q <= 0;
	else
		q <={q[2:0],sin};

end
endmodule

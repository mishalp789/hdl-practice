module t_ff(
	input logic clk,
	input logic t,
        output logic q
);
	always_ff @(posedge clk)
		if (t)  q<=~q;
endmodule	

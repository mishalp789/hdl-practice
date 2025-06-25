module basic_gates_tb;
	logic a, b;
	logic y_and, y_or, y_xor;

	basic_gates uut(.a(a), .b(b), .y_and(y_and), .y_or(y_or), .y_xor(y_xor));

	initial begin
		$dumpfile("basic_gates.vcd");
		$dumpvars(0, basic_gates_tb);
		
		$display("a b | and or xor");
		for (int i = 0; i < 4; i++) begin
			a = i[1];
			b = i[0];
			#5;
			$display("%b %b | %b %b %b",a , b, y_and, y_or, y_xor);
		end
		$finish;
	end
endmodule 

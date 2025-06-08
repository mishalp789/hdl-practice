module half_adder_tb;
  reg a, b;
  wire sum, carry;

  half_adder uut (.a(a), .b(b) ,.sum , .carry(carry));

  initial begin 
    $dumpfile("half_adder.vcd");
    $dumpvars(0, half_adder_tb);
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
    $finish;
  end
endmodule


	


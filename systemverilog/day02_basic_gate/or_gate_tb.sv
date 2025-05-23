module or_gate_tb;
  logic a, b, y;

  or_gate uut (.a(a), .b(b), .y(y));

  initial begin
    $dumpfile("or_gate_sv.vcd");
    $dumpvars(0, or_gate_tb);

    a = 0; b = 0;
    #10 a = 0; b = 1;
    #10 a = 1; b = 0;
    #10 a = 1; b = 1;
    #10 $finish;
  end
endmodule

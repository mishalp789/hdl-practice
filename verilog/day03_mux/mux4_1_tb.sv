module mux4_1_tb;
  logic a, b, c, d, y;
  logic [1:0] sel;

  mux4_1 uut (.a(a), .b(b), .c(c), .d(d), .sel(sel), .y(y));

  initial begin
    $dumpfile("mux4_1_sv.vcd");
    $dumpvars(0, mux4_1_tb);

    a = 0; b = 1; c = 0; d = 1;

    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;

    $finish;
  end
endmodule

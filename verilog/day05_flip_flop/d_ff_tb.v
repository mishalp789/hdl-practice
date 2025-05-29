module d_ff_tb;
  reg clk, d;
  wire q;

  d_ff uut (.clk(clk), .d(d), .q(q));

  initial begin
    $dumpfile("d_ff.vcd");
    $dumpvars(0, d_ff_tb);

    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    d = 0; #12;
    d = 1; #10;
    d = 0; #10;
    d = 1; #10;
    #10 $finish;
  end
endmodule


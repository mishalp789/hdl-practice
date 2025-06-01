module moore_fsm_tb;
  reg clk, rst, x;
  wire z;

  moore_fsm uut (.clk(clk), .rst(rst), .x(x), .z(z));

  initial begin
    $dumpfile("moore_fsm.vcd");
    $dumpvars(0, moore_fsm_tb);
    clk = 0; forever #5 clk = ~clk;
  end

  initial begin
    rst = 1; #10; rst = 0;
    x = 1; #10;
    x = 0; #10;
    x = 1; #10; // detect 101 → z = 1 (state S3)
    x = 1; #10;
    $finish;
  end
endmodule

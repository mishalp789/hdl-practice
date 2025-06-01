module mealy_fsm_tb;
  reg clk, rst, x;
  wire z;

  mealy_fsm uut (.clk(clk), .rst(rst), .x(x), .z(z));

  initial begin
    $dumpfile("mealy_fsm.vcd");
    $dumpvars(0, mealy_fsm_tb);
    clk = 0; forever #5 clk = ~clk;
  end

  initial begin
    rst = 1; #10; rst = 0;
    x = 1; #10;
    x = 0; #10;
    x = 1; #10;
    x = 1; #10; // detect 1011 → z = 1
    x = 0; #10;
    $finish;
  end
endmodule

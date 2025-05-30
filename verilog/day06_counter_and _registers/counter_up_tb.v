module counter_up_tb;
  reg clk, rst;
  wire [3:0] count;

  counter_up uut (.clk(clk), .rst(rst), .count(count));

  initial begin
    $dumpfile("counter_up.vcd");
    $dumpvars(0, counter_up_tb);
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    rst = 1; #10;
    rst = 0; #100;
    $finish;
  end
endmodule

module counter_down_tb;
  reg clk, rst;
  wire [3:0] count;

  counter_down uut (.clk(clk), .rst(rst), .count(count));

  initial begin
    $dumpfile("counter_down.vcd");
    $dumpvars(0, counter_down_tb);
    clk = 0; forever #5 clk = ~clk;
  end

  initial begin
    rst = 1; #10;
    rst = 0; #80;
    $finish;
  end
endmodule


module sipo_tb;
  reg clk, rst, sin;
  wire [3:0] q;

  sipo uut (.clk(clk), .rst(rst), .sin(sin), .q(q));

  initial begin
    $dumpfile("sipo.vcd");
    $dumpvars(0, sipo_tb);
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    rst = 1; #10;
    rst = 0;
    sin = 1; #10;
    sin = 0; #10;
    sin = 1; #10;
    sin = 1; #10;
    $finish;
  end
endmodule

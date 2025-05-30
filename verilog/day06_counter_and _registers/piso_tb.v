module piso_tb;
  reg clk, rst, load;
  reg [3:0] data_in;
  wire dout;

  piso uut (.clk(clk), .rst(rst), .load(load), .data_in(data_in), .dout(dout));

  initial begin
    $dumpfile("piso.vcd");
    $dumpvars(0, piso_tb);
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    rst = 1; #10;
    rst = 0;
    data_in = 4'b1101; load = 1; #10;
    load = 0; #40;
    $finish;
  end
endmodule

module multiplier_tb;
  reg [3:0] a, b;
  wire [7:0] prod;

  multiplier uut (.a(a), .b(b), .prod(prod));

  initial begin
    $dumpfile("multiplier.vcd");
    $dumpvars(0, multiplier_tb);

    a = 4'd3; b = 4'd2; #10;
    a = 4'd7; b = 4'd5; #10;
    $finish;
  end
endmodule

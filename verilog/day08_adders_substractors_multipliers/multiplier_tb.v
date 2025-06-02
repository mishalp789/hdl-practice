module multiplier_tb;
  reg [3:0] a, b;
  wire [7:0] product;

  multiplier uut (.a(a), .b(b), .product(product));

  initial begin
    $dumpfile("multiplier.vcd");
    $dumpvars(0, multiplier_tb);
    a = 4'd3; b = 4'd4; #10;
    a = 4'd9; b = 4'd9; #10;
    $finish;
  end
endmodule

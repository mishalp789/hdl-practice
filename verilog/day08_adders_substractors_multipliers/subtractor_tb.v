module subtractor_tb;
  reg [3:0] a, b;
  wire [3:0] diff;
  wire borrow;

  subtractor uut (.a(a), .b(b), .diff(diff), .borrow(borrow));

  initial begin
    $dumpfile("subtractor.vcd");
    $dumpvars(0, subtractor_tb);
    a = 4'b1001; b = 4'b0100; #10;
    a = 4'b0010; b = 4'b0100; #10;
    $finish;
  end
endmodule

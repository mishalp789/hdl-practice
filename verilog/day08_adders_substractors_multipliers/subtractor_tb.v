module subtractor_tb;
  reg [3:0] a, b;
  wire [3:0] diff;

  subtractor uut (.a(a), .b(b), .diff(diff));

  initial begin
    $dumpfile("subtractor.vcd");
    $dumpvars(0, subtractor_tb);

    a = 4; b = 2; #10;
    a = 10; b = 5; #10;
    $finish;
  end
endmodule

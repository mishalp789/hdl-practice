module comparator_tb;
  reg [1:0] a, b;
  wire gt, eq, lt;

  comparator uut (.a(a), .b(b), .gt(gt), .eq(eq), .lt(lt));

  initial begin
    $dumpfile("comparator.vcd");
    $dumpvars(0, comparator_tb);

    a = 2; b = 1; #10;
    a = 1; b = 1; #10;
    a = 0; b = 2; #10;
    $finish;
  end
endmodule

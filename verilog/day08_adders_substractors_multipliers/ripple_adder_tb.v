module ripple_adder_tb;
  reg [3:0] a, b;
  reg cin;
  wire [3:0] sum;
  wire cout;

  ripple_adder uut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

  initial begin
    $dumpfile("ripple_adder.vcd");
    $dumpvars(0, ripple_adder_tb);
    a = 4'b0101; b = 4'b0011; cin = 0; #10;
    a = 4'b1111; b = 4'b0001; cin = 0; #10;
    $finish;
  end
endmodule

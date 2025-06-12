module alu_8bit_tb;
  reg [7:0] a, b;
  reg [2:0] sel;
  wire [7:0] out;
  wire carry;

  alu_8bit uut (.a(a), .b(b), .sel(sel), .out(out), .carry(carry));

  initial begin
    $dumpfile("alu_8bit.vcd");
    $dumpvars(0, alu_8bit_tb);

    a = 8'b00001100; b = 8'b00000101;

    sel = 3'b000; #10;
    sel = 3'b001; #10;
    sel = 3'b010; #10;
    sel = 3'b011; #10;
    sel = 3'b100; #10;
    sel = 3'b101; #10;
    sel = 3'b110; #10;
    sel = 3'b111; #10;

    $finish;
  end
endmodule

module alu_4bit_tb;
  reg [3:0] a, b;
  reg [2:0] sel;
  wire [3:0] out;
  wire carry;

  alu_4bit uut (.a(a), .b(b), .sel(sel), .out(out), .carry(carry));

  initial begin
    $dumpfile("alu_4bit.vcd");
    $dumpvars(0, alu_4bit_tb);

    a = 4'b0101; b = 4'b0011;

    sel = 3'b000; #10;  // Add
    sel = 3'b001; #10;  // Sub
    sel = 3'b010; #10;  // AND
    sel = 3'b011; #10;  // OR
    sel = 3'b100; #10;  // XOR
    sel = 3'b101; #10;  // NOT A
    sel = 3'b110; #10;  // Shift Left
    sel = 3'b111; #10;  // Shift Right

    $finish;
  end
endmodule

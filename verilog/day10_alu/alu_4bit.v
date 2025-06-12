module alu_4bit (
  input [3:0] a, b,
  input [2:0] sel,
  output reg [3:0] out,
  output reg carry
);
  always @(*) begin
    case (sel)
      3'b000: {carry, out} = a + b;       // Addition
      3'b001: {carry, out} = a - b;       // Subtraction
      3'b010: out = a & b;                // AND
      3'b011: out = a | b;                // OR
      3'b100: out = a ^ b;                // XOR
      3'b101: out = ~a;                   // NOT A
      3'b110: out = a << 1;               // Shift Left
      3'b111: out = a >> 1;               // Shift Right
      default: out = 4'b0000;
    endcase
  end
endmodule

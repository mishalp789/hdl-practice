module mux4_1(
  input [1:0] sel,
  input a, b, c, d,
  output reg y
);
  always @(*) begin
    case (sel)
      2'b00: y = a;
      2'b01: y = b;
      2'b10: y = c;
      2'b11: y = d;
    endcase
  end
endmodule

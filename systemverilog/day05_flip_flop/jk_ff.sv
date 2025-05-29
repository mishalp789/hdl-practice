module jk_ff (
  input logic clk,
  input logic j, k,
  output logic q
);
  always_ff @(posedge clk)
    case ({j, k})
      2'b00: q <= q;
      2'b01: q <= 0;
      2'b10: q <= 1;
      2'b11: q <= ~q;
    endcase
endmodule

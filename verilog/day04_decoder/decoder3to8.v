module decoder3to8(
  input [2:0] in,
  input en,
  output [7:0] out
);
  assign out = (en == 1) ? (8'b00000001 << in) : 8'b00000000;

endmodule

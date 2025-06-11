module comparator(input [1:0] a, input [1:0] b, output gt, eq, lt);
  assign gt = (a > b);
  assign eq = (a == b);
  assign lt = (a < b);
endmodule

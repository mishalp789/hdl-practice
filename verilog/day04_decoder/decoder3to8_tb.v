module decoder3to8_tb;
  reg [2:0] in;
  reg en;
  wire [7:0] out;

  decoder3to8 uut (
    .in(in),
    .en(en),
    .out(out)
  );

  initial begin
    $dumpfile("decoder3to8.vcd");
    $dumpvars(0, decoder3to8_tb);

    en = 1;
    in = 3'b000; #10;
    in = 3'b001; #10;
    in = 3'b010; #10;
    in = 3'b111; #10;

    en = 0; in = 3'b101; #10;

    $finish;
  end
endmodule

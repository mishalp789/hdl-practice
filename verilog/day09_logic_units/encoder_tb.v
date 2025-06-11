module encoder_tb;
  reg [3:0] in;
  wire [1:0] out;

  encoder uut (.in(in), .out(out));

  initial begin
    $dumpfile("encoder.vcd");
    $dumpvars(0, encoder_tb);

    in = 4'b0001; #10;
    in = 4'b0010; #10;
    in = 4'b0100; #10;
    in = 4'b1000; #10;
    $finish;
  end
endmodule

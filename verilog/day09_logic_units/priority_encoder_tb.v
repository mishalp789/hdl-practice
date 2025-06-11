module priority_encoder_tb;
  reg [3:0] in;
  wire [1:0] out;

  priority_encoder uut (.in(in), .out(out));

  initial begin
    $dumpfile("priority_encoder.vcd");
    $dumpvars(0, priority_encoder_tb);

    in = 4'b0001; #10;
    in = 4'b0011; #10;
    in = 4'b0101; #10;
    in = 4'b1001; #10;
    $finish;
  end
endmodule

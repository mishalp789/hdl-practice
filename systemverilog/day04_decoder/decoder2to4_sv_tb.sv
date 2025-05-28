module decoder2to4_sv_tb;
  logic [1:0] in;
  logic en;
  logic [3:0] out;

  decoder2to4_sv uut(
     .in(in),
     .en(en),
     .out(out)
);

initial begin
  $dumpfile("decoder2to4_sv.vcd");
  $dumpvars(0, decoder2to4_sv_tb);
  
  en = 1;
  in = 2'b00; #10;
  in = 2'b01; #10;
  in = 2'b10; #10;
  in = 2'b11; #10;

  en = 0; in = 2'b10; #10;

  $finish;
end
endmodule


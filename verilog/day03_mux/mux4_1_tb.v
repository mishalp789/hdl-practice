module mux4_1_tb;

reg [1:0] sel;
reg a,b,c,d;
wire y;

mux4_1 uut(
	.sel(sel),.a(a),.b(b),.c(c),.d(d),.y(y)

);

initial begin

	$dumpfile("mux4_1.vcd");
	$dumpvars(0,mux4_1_tb);
	
	a = 1; b = 0; c = 0; d = 0; sel = 2'b00;
        #10;
	a = 0; b = 1; c = 0; d = 0; sel = 2'b01;
        #10;
	a = 0; b = 0; c = 1; d = 0; sel = 2'b10;
        #10;
	a = 0; b = 0; c = 0; d = 1; sel = 2'b11;
        #10;
	
	$finish;

	
end
initial begin
	$monitor("Time=%0t | sel=%b a=%b b=%b c=%b d=%b y=%b", $time, sel, a, b, c, d, y);
end

endmodule

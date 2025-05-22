// day01_and_gate_tb.v
module and_gate_tb;

reg a, b;
wire y;

// Instantiating the design under test (DUT)
and_gate uut (
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    $dumpfile("and_gate.vcd");     // Name of the VCD file
    $dumpvars(0, and_gate_tb);     // Dump all variables in this module

    $display("A B | Y");

    a = 0; b = 0; #10; $display("%b %b | %b", a, b, y);
    a = 0; b = 1; #10; $display("%b %b | %b", a, b, y);
    a = 1; b = 0; #10; $display("%b %b | %b", a, b, y);
    a = 1; b = 1; #10; $display("%b %b | %b", a, b, y);

    $finish;
end

endmodule


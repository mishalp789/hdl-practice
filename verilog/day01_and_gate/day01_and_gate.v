// day01_and_gate.v
module and_gate (
    input wire a,
    input wire b,
    output wire y
);

assign y = a & b;  // bitwise AND

endmodule


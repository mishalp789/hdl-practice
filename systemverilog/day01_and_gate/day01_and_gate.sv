// day01_and_gate.sv
module and_gate (
    input logic a,
    input logic b,
    output logic y
);

assign y = a & b;

endmodule


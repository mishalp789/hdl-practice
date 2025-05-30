module piso (
  input clk,
  input rst,
  input load,
  input [3:0] data_in,
  output reg dout
);
  reg [3:0] temp;

  always @(posedge clk or posedge rst) begin
    if (rst)
      temp <= 0;
    else if (load)
      temp <= data_in;
    else
      temp <= {temp[2:0], 1'b0};
  end

  always @(posedge clk or posedge rst)
    if (rst)
      dout <= 0;
    else
      dout <= temp[3];  // MSB goes out first
endmodule

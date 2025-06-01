module moore_fsm (
  input clk, rst, x,
  output reg z
);
  reg [1:0] state, next_state;
  parameter S0 = 2'd0, S1 = 2'd1, S2 = 2'd2, S3 = 2'd3;

  always @(posedge clk or posedge rst)
    if (rst) state <= S0;
    else state <= next_state;

  always @(*) begin
    case (state)
      S0: next_state = x ? S1 : S0;
      S1: next_state = x ? S1 : S2;
      S2: next_state = x ? S3 : S0;
      S3: next_state = x ? S1 : S2;
      default: next_state = S0;
    endcase
  end

  always @(*) begin
    z = (state == S3);
  end
endmodule


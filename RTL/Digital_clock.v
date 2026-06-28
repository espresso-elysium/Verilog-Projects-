module Digital_Clock #(
  parameter CLK_FREQ = 50_000_000
)(
  input clk,
  input rst,
  output [5:0]second,
  output [5:0]minute,
  output [4:0]hour
);
wire tick_1Hz;
wire carry_sec,carry_min,carry_hour;

freq_divider #(.CLK_FREQ(CLK_FREQ)) freq_divider_inst(
  .clk(clk),
  .rst(rst),
  .tick_1Hz(tick_1Hz)
);

second_counter second_counter_inst(
  .clk(clk),
  .rst(rst),
  .tick_hz(tick_1Hz),
  .second(second),
  .carry_sec(carry_sec)
);

minute_counter minute_counter_inst(
  .clk(clk),
  .rst(rst),
  .carry_sec(carry_sec),
  .minute(minute),
  .carry_min(carry_min)
);

hour_counter hour_counter_inst(
  .clk(clk),
  .rst(rst),
  .carry_min(carry_min),
  .hour(hour)
);
endmodule
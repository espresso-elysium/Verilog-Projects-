module second_counter(
  input clk,
  input rst,
  output reg carry_sec,
  output reg [5:0]second,
  input tick_hz
);
always @(posedge clk)begin
  if(rst)begin
    second<=6'd0;
    carry_sec<=1'b0;
  end
  else if(tick_hz)begin
    if(second==6'd59)begin
      second<=6'd0;
      carry_sec<=1'b1;
    end
    else begin
      second<=second+1'b1;
      carry_sec<=1'b0;
    end
  end
  else begin
   
    carry_sec<=1'b0;
  end
end
endmodule
module minute_counter(
  input clk,
  input rst,
  input carry_sec,
  output reg [5:0]minute,
  output reg carry_min
);
always @(posedge clk)begin
  if(rst)begin
    minute<=6'd0;
    carry_min<=0;
  end
  else if(carry_sec)begin
    if(minute==6'd59)begin
      minute<=6'd0;
      carry_min<=1;
    end
    else begin
      minute<=minute+1'b1;
      carry_min<=0;
    end
  end
  else begin
   
    carry_min<=0;
  end
end
endmodule
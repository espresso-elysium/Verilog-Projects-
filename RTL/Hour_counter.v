module hour_counter(
  input clk,
  input rst,
  input carry_min,
  output reg [4:0]hour
  
);
always @(posedge clk)begin
  if(rst)begin
    hour<=5'd0;
    
  end
  else if(carry_min)begin
    if(hour==5'd23)begin
      hour<=5'd0;
  
    end
    else begin
      hour<=hour+1'b1;
      
    end
  end
  
end
endmodule
module tb();
reg clk;
reg rst;
wire [5:0]second;
wire [5:0]minute;
wire [4:0]hour;

Digital_Clock #(.CLK_FREQ(2)) dut(
  .clk(clk),
  .rst(rst),
  .second(second),
  .minute(minute),
  .hour(hour)
);

initial 
clk=0;
always #5 clk=~clk;
initial begin
  rst=1;
  #20;
  rst=0;
  #140000;
  $finish;
end

always @(posedge clk) begin
    if (dut.tick_1Hz)
        $display("%02d:%02d:%02d", hour, minute, second);
end
 
  initial begin
    $dumpfile("Digital_Clock.vcd");
    $dumpvars(0, tb);
  end

endmodule




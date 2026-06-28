module freq_divider #(
    parameter CLK_FREQ = 50_000_000
)(
    input  clk,
    input  rst,
    output reg tick_1Hz
);

    reg [31:0] counter;

    always @(posedge clk)
    begin
        if (rst)
        begin
            counter  <= 32'd0;
            tick_1Hz <= 1'b0;
        end
        else if (counter == CLK_FREQ - 1)
        begin
            counter  <= 32'd0;
            tick_1Hz <= 1'b1;
        end
        else
        begin
            counter  <= counter + 1'b1;
            tick_1Hz <= 1'b0;
        end
    end

endmodule 
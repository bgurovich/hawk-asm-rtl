`timescale 1ns / 1ps

module hawk_datapath(
    input clk, clr_count, inc_count,
    output reg[3:0] count
    );

always @(posedge clk)begin
    if (clr_count)
        count = 4'b0000;
    else if (inc_count)
        count = count + 4'b0001;
end
endmodule

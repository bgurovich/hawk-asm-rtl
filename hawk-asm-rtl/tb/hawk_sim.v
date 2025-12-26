`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2024 10:59:34 AM
// Design Name: 
// Module Name: hawk_sim
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module hawk_sim;

reg clk;
reg YP;
reg NS;

wire [3:0] count;
wire [3:0] present_state;
wire [3:0] next_state;
wire YL;
wire RL;
wire DNW;
wire W;
wire clr_count;
wire inc_count;

hawk_main uut(

.clk(clk),
.YP(YP),
.NS(NS),
.count(count),
.present_state(present_state),
.next_state(next_state),
.YL(YL),
.RL(RL),
.DNW(DNW),
.W(W),
.clr_count(clr_count),
.inc_count(inc_count)
);

initial begin

clk = 0;
#10;

clk = 0;
YP = 0;
NS = 0;
#120;

YP = 1;
#50;

YP = 0;
#200;

NS = 1;
#400;

$stop;
end

// Defining the clock period
always #10 clk = ~clk;
// The clock is 'changing value' every 10 ns
// The period is 2*10 = 20 ns

endmodule

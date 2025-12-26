`timescale 1ns / 1ps

module hawk_main(
    input clk, YP, NS, reset,
    output YL, RL, DNW, W, [3:0] present_state, [3:0] next_state, [3:0] count, clr_count, inc_count
    );
    
 hawk_controller C1(clk, YP, NS, count, YL, RL, DNW, W, clr_count, inc_count, present_state, next_state);
 hawk_datapath D1(clk, clr_count, inc_count, count);
    
endmodule
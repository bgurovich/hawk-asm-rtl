`timescale 1ns / 1ps

 module hawk_controller(
    input clk, YP, NS,
    input [3:0] count,
    output reg YL,
    output reg RL,
    output reg DNW,
    output reg W,
    output reg clr_count,
    output reg inc_count,
    output reg[3:0] present_state,
    output reg[3:0] next_state

    );
    

parameter   S0 = 4'b0000,
            S1 = 4'b0001,
            S2 = 4'b0010,
            S3 = 4'b0011,
            S4 = 4'b0100,
            S5 = 4'b0101,
            S6 = 4'b0110,
            S7 = 4'b0111,
            S8 = 4'b1000,
            S9 = 4'b1001,
            S10 = 4'b1010,
            S11 = 4'b1011,
            S12 = 4'b1100,
            S13 = 4'b1101;

// State Transition
always @(posedge clk)begin
    present_state <= next_state;
end

// Define the next state
always @(present_state or YP or NS or count)begin
    case(present_state)
        S0: if(YP==1) next_state = S1; else next_state = S0;
        S1: next_state <= S2;
        S2: next_state <= S3;
        S3: next_state <= S4;
        S4: next_state <= S5;
        S5: next_state <= S6;
        S6: next_state <= S7;
        S7: next_state <= S8;
        S8: if(NS==1) next_state = S9; else next_state = S8;
        S9: if(count==4'hA) next_state = S10; else next_state = S9;
        S10: next_state <= S11;
        S11: next_state <= S12;
        S12: next_state <= S13;
        S13: next_state <= S0;
        default: next_state <= S0;
    endcase
end

// Defining the outputs
always @(present_state)begin
    case(present_state)
        S0:begin
        YL=0; RL=0; DNW=0; W=0; clr_count=1; inc_count=0;
        end
        S1:begin
        YL=1; RL=0; DNW=1; W=0; clr_count=0; inc_count=0;
        end        
        S2:begin
        YL=0; RL=0; DNW=1; W=0; clr_count=0; inc_count=0;
        end        
        S3:begin
        YL=1; RL=0; DNW=1; W=0; clr_count=0; inc_count=0;
        end       
        S4:begin
        YL=0; RL=0; DNW=1; W=0; clr_count=0; inc_count=0;
        end      
        S5:begin
        YL=1; RL=0; DNW=1; W=0; clr_count=0; inc_count=0;
        end     
        S6:begin
        YL=0; RL=0; DNW=1; W=0; clr_count=0; inc_count=0;
        end    
        S7:begin
        YL=0; RL=1; DNW=1; W=0; clr_count=0; inc_count=0;
        end   
        S8:begin
        YL=0; RL=1; DNW=0; W=1; clr_count=0; inc_count=0;
        end     
        S9:begin
        YL=0; RL=1; DNW=0; W=1; clr_count=0; inc_count=1;
        end     
        S10:begin
        YL=0; RL=1; DNW=0; W=0; clr_count=0; inc_count=0;
        end      
        S11:begin
        YL=0; RL=0; DNW=1; W=0; clr_count=0; inc_count=0;
        end  
        S12:begin
        YL=0; RL=1; DNW=0; W=0; clr_count=0; inc_count=0;
        end 
        S13:begin
        YL=0; RL=0; DNW=1; W=0; clr_count=0; inc_count=0;
        end
    endcase
end
    
endmodule

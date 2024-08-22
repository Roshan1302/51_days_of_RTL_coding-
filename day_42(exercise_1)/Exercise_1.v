`timescale 1ns / 1ps
// there are 4 men outside the door if all men 
//come inside the door then detect all men are entered 
// in room 
 
module Exercise_1(
input [3:0] men ,
input clk ,rst_in ,
output all_men_in
    );
    wire [3:0] D;
    reg  [3:0] q;
    wire feedback_rst;
    always @(posedge clk )
        begin 
            if (feedback_rst)
                q <= 0;
             else 
                q <= D;   
        end 
    assign D[0] = q[0] | men[0];   
    assign D[1] = q[1] | men[1];   
    assign D[2] = q[2] | men[2];   
    assign D[3] = q[3] | men[3];   
    assign all_men_in = q[0] & q[1] & q[2] & q[3];
    
    assign feedback_rst =  rst_in | all_men_in;
endmodule

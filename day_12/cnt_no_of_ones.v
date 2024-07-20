`timescale 1ns / 1ps
module cnt_no_of_ones (
                    input [7:0] in,
                    output [3:0] count
                    );

function [3:0] count_ones_function(input [7:0] inp);
    integer i;
    begin
        count_ones_function = 0;
        for(i=0;i<8;i=i+1) begin
            if(inp[i]==1'b1) begin
                count_ones_function=count_ones_function+1;
            end
        end
    end
endfunction

assign count = count_ones_function(in);

endmodule
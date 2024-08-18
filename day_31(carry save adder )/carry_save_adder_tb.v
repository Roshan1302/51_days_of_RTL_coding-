`timescale 1ns / 1ps


module carry_save_adder_tb( );
    wire [5:0] final_result;
    reg [3:0]x,y,z;
    carry_save_adder dut (.final_result(final_result),.x(x),.y(y),.z(z));
    initial 
        begin
            x=4'b1111;
            y=4'b1101;
            z=4'b1011;
            #20
            x=4'b1011;
            y=4'b1101;
            z=4'b1011;
            #20
            x=4'b1101;
            y=4'b1101;
            z=4'b1011;
            #20
            x=4'b1011;
            y=4'b1101;
            z=4'b1010;
            #20 $finish;
        end 
    endmodule

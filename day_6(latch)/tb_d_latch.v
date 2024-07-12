`timescale 1ns / 1ns

module tb_d_latch();
reg d ,en;
wire q;
    d_latch dut(.d(d),.en(en),.q(q));
    always #5 en = ~en ;
    always #12 d=~d;
    initial 
        begin 
            d=0;
            en=0;
            #80
            $finish;
        end 
    initial 
        begin 
            $monitor ("time =%0d,d=%b,q=%b,en=%b",$time ,d,q,en);
        end 
 endmodule

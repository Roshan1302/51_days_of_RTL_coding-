`timescale 1ns / 1ps

module TB_posedge_pulse_detector();
reg ip ,clk ,rst ;
wire  out ;
posedge_pulse_detector DUT (
                        .ip(ip) ,
                        .clk(clk) ,
                        .rst(rst) ,
                        .out(out)
                                   );
      always # 5 clk = ~ clk ;
      initial 
        begin 
            ip = 0 ;
           
            clk = 1;
            rst = 1;
            #5 
            rst = 0;
            #36
            ip = 1;
            #15 
            ip = 0;
            #35
            ip = 1;
            #30;
            $finish ; 
        end 
 endmodule

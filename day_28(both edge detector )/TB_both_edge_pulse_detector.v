module TB_both_edge_pulse_detector();
reg ip ,clk ,rst ;
wire  out ;
both_edge_pulse_detector DUT (
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
            #66
            ip = 1;
            #15 
            ip = 0;
            #55
            ip = 1;
            #30;
            ip =0;
            #30
            $finish ; 
        end 
 endmodule

`timescale 1ns / 1ps

module TB_demux1x4();
         reg din;
         reg [1:0]sel;
         wire [3:0] dout;
         integer i;
demux_1x4 dut (
         .din(din),
         .sel(sel),
         .dout(dout) );
         initial 
            begin 
                for(i=0;i<9;i=i+1)
                    begin 
                        #10
                        {sel,din}=i;
            
                    end 
            $finish;
            end
endmodule

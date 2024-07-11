`timescale 1ns / 1ps

module TB_encoder_4x2();
                reg en;
                reg [3:0]din;
                wire [1:0]dout;
                
    encoder_4x2 DUT(
                .en(en),
                .din(din),
                .dout(dout) 
                    );
      integer i;               
     initial 
        begin 
            en = 1;
            #10 
            en = 0;
                for( i = 1 ; i < 16 ; i = i << 1 )
                    begin 
                        din = i;
                        #15;
                     end    
                    $finish;
         end                      
endmodule

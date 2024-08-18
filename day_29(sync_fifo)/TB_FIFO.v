module TB_FIFO( );
reg rst, clk, wr_en, rd_en;   
reg [7:0] data_in;  
wire  [7:0]  data_out;                  
wire  f_empty, f_full;      
integer i ;


sync_fifo tb_fifo( .clk(clk), .rst(rst), .data_in(data_in),.data_out(data_out), .wr_en(wr_en),.rd_en(rd_en),.f_empty(f_empty),.f_full(f_full) );
always #5 clk=~clk;

    initial 
    begin
       clk=0;
       rst=1;
       wr_en =0;
       rd_en =0;
    
       #10
       rst=0;
       for (i=0;i<8;i=i+1)
            begin 
                #10 
                wr_en =1;
                data_in = i;
            end 
            #10
            wr_en =0;
            rd_en = 1;
       #100
       $finish;
       end
    endmodule

module sync_fifo( clk, rst, data_in, data_out, wr_en, rd_en, f_empty, f_full );
input  rst, clk, wr_en, rd_en;   
input [7:0] data_in;  
output reg [7:0]  data_out;                  
output  reg  f_empty, f_full;      

//reg [3:0] fifo_counter;             
reg[3:0]  rd_ptr, wr_ptr;      
reg[7:0] FIFO [7 : 0]; 

always @(posedge clk or posedge rst)
    begin
       if( rst )
           begin
//               fifo_counter <= 0;
               wr_ptr <= 0;		
               rd_ptr <= 0;
               data_out <= data_out;		
           end
    end
											//READ
always @( posedge clk )
    begin
          if( rd_en && !f_empty )
              begin
                 data_out = FIFO[rd_ptr];
                 rd_ptr = rd_ptr + 1;
//                 fifo_counter = fifo_counter - 1;	
              end 
              
           else
              begin
                 rd_ptr <= rd_ptr;	
//                 fifo_counter <= fifo_counter;		
              end 
    end


											//WRITE
always @(posedge clk)
    begin
    if( wr_en && !f_full )
       begin
          FIFO[ wr_ptr ] <= data_in;	
          wr_ptr <= wr_ptr + 1;
//          fifo_counter <= fifo_counter + 1;
       end
   else 
    begin                       
        wr_ptr <= wr_ptr;
//        fifo_counter <= fifo_counter;	
    end
end

											// counter

always @( negedge clk)
    begin
       f_empty = (wr_ptr==rd_ptr);   
       f_full = ({~wr_ptr[3],wr_ptr[2:0]}== rd_ptr );  
    end
endmodule

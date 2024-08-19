`timescale 1ns / 1ps


module ram_2d_64x32x8_TB();
reg clk,cs,wr;
reg [7:0] d_in;
reg [5:0] add_a;
reg [4:0] add_b;
wire [7:0]d_out;
integer i,j ;

 ram_2d_64x32x8 dut (.clk(clk),.cs(cs),.wr(wr) ,.d_in(d_in),.add_a(add_a),.add_b(add_b),.d_out(d_out));
   always #5 clk = ~clk;
   initial 
   begin 
   clk =0;
    cs=0;
    
    #10 
    cs=1;
   
   for (i=0;i<2048;i=i+1)
   begin 
   #10
   wr=0;
   #10
   wr=1;
             #10
      {add_a,add_b}=i;
           d_in  = $random ;  
   #10
   wr=0;        
   end 
         
//   $finish ;
   end 
endmodule

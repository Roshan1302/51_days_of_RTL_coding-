`timescale 1ns / 1ps

module dual_port_ram_tb();
reg clk,wr_a,wr_b,cs_a,cs_b,out_en_a,out_en_b;
reg [7:0]d_in_a,d_in_b;
wire [7:0]d_out_a,d_out_b;
reg [4:0]add_a,add_b;
    integer i;
    
   true_dual_port_ram dut (.d_out_a(d_out_a),.d_out_b(d_out_b),.add_a(add_a),.add_b(add_b),.d_in_b(d_in_b),.d_in_a(d_in_a),.clk(clk),.wr_a(wr_a),.wr_b(wr_b),.cs_a(cs_a),.cs_b(cs_b),.out_en_a(out_en_a),.out_en_b(out_en_b)) ;    always #5 clk =~clk;
    initial 
     begin 
       clk =0;
      { wr_a,wr_b,cs_a,cs_b,out_en_a,out_en_b}='b000000;
     #10
    { cs_a,out_en_a}=3;
     for (i=0;i<16;i=i+1)
      begin 
      #10
      wr_a=0;
      #10
       wr_a=1;
        add_a = i;
        d_in_a = $random;
      end 
     #10
     
     { cs_b,out_en_b}=3;
     for (i=16;i<32;i=i+1)
      begin 
     #10
      wr_b=0;
      #10
       wr_b=1;
        add_b = i;
        d_in_b = $random;
      end 
      
      #700
      $finish ;
     end
endmodule

`timescale 1ns / 1ps

module TB_exercise_1();
reg[3:0] men ;
reg clk ,rst ;
wire all_men_in;
Exercise_1 DUT(
    .men(men) ,
    .clk(clk) ,
    .rst_in(rst) ,
    .all_men_in(all_men_in) );
    
    always #5 clk = ~clk;
    task t1();
        begin
            #10
            men = 4'b0001;
            #10
            men = 4'b0010;
            #10 
            men = 4'b0100;
            #10
            men = 4'b1000 ;      
        end     
    endtask
    
    task t2();
        begin
            #10
            men = 4'b0011;
            #10
            men = 4'b0100;
            #10 
            men = 4'b1000 ;      
        end 
     endtask
     
task t3();
        begin
            #10
            men = 4'b0111;
            #10 
            men = 4'b1000 ;      
        end 
     endtask
     
task t4();
        begin
            #10
            men = 4'b1111;
        end 
     endtask     
    initial 
        begin 
            #10
            rst = 1;
            clk = 0;
            #10 
            rst = 0;
            t1();
            #10
            t2();
            #10
            t3();
            #10
            t4();
            #10
            $finish;
        end 
endmodule

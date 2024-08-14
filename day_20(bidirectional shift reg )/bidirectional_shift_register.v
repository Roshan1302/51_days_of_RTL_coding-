`timescale 1ns / 1ps

module bidirectional_shift_register(
input en ,clk,direction ,si_right,si_left,  // 0 right shift // d is serial in 
                               // 1 left shift 
output [3:0] out);
reg [3:0]q;

always @(posedge clk )
begin 
      if (direction)
      begin//   si_right
        q[3]<=si_left;
        q[2]<=q[3];
        q[1]<=q[2];
        q[0]<=q[1];
       end
       
      else
      begin//   si_right
        q[0]<=si_right;
        q[1]<=q[0];
        q[2]<=q[1];
        q[3]<=q[2];
       end
end 
assign out = q;
endmodule

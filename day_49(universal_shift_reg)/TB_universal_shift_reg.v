`timescale 1ns / 1ps
module universal_shiftreg_tb;

	// Inputs
	reg clock;
	reg reset;
	reg [1:0] MODE;
	reg [3:0] DATAIN;

	// Outputs
	wire [3:0] DATAOUT;

	// Instantiate the Unit Under Test (UUT)
	universal_shiftreg uut (
		.DATAOUT(DATAOUT), 
		.clock(clock), 
		.reset(reset), 
		.MODE(MODE), 
		.DATAIN(DATAIN)
	);

	initial begin
		// Initialize Inputs
		  clock =0; MODE = 2'b00; DATAIN = 4'b0000;
    reset = 1; #20; reset = 0; #20;
	 
	 
	  //  Right Shift mode

   #20 MODE = 2'b01; DATAIN = 4'b0011; 

	
	 
	  //  Left Shift mode

	 #20  MODE = 2'b10; DATAIN = 4'b0111; 
	 
	 // parallel load mode
 
    #20 MODE = 2'b11; DATAIN = 4'b1010; 
		

	end
	
	always #5 clock=~clock;
	
	initial begin
	$monitor(" Time=%t | Mode =%b | DATAIN=%b | DATAOUT=%b",$time,MODE,DATAIN,DATAOUT);
	#200 $finish;
	end
	
      
endmodule
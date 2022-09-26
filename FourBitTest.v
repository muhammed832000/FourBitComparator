`timescale 1ns / 1ps

module FourBitTest;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire aeqb;

	// Instantiate the Unit Under Test (UUT)
	FourBitComparator uut (
		.a(a), 
		.b(b), 
		.aeqb(aeqb)
	);

	initial begin
		// Initialize Inputs
		a = 4'b0000;
		b = 4'b0000;

		// Wait 100 ns for global reset to finish
		#100;
		a = 4'b1000;
		b = 4'b1000;

		// Wait 100 ns for global reset to finish
		#100;
		a = 4'b0100;
		b = 4'b0100;

		// Wait 100 ns for global reset to finish
		#100;
		a = 4'b0110;
		b = 4'b0000;

		// Wait 100 ns for global reset to finish
		#100;
		a = 4'b0001;
		b = 4'b0000;

		// Wait 100 ns for global reset to finish
		#100;
		a = 4'b1111;
		b = 4'b1111;

		// Wait 100 ns for global reset to finish
		#100;a = 4'b0100;
		b = 4'b0000;

		// Wait 100 ns for global reset to finish
		#100;a = 4'b0000;
		b = 4'b1110;

		// Wait 100 ns for global reset to finish
		#100;a = 4'b0000;
		b = 4'b0101;

		// Wait 100 ns for global reset to finish
		#100;a = 4'b1010;
		b = 4'b1010;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule


module dmem(input logic clk,we,
				input logic [31:0] a, wd,
				output logic [31:0] rd,
				output logic [31:0] RAMout[255:0]);
				
	logic [31:0] RAM[255:0];
	
	assign rd = RAM[a[31:2]];
	
	assign RAMout = RAM;
	
	always_ff @(posedge clk)
		if (we) RAM[a[31:2]] <= wd;
		
endmodule
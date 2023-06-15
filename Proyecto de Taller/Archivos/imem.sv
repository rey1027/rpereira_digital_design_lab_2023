module imem(input logic [31:0] a,
				output logic [31:0] rd);
	logic [31:0] RAM[63:0];
	
	initial
		$readmemh("C:/Users/Rachel/Desktop/Proyecto de Taller/Archivos/instr/memfile.dat",RAM);
	assign rd = RAM[a[31:2]];
endmodule
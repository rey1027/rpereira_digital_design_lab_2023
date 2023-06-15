module ROM (input logic [31:0] address,
				output logic [31:0] rdata,
				output logic [31:0] ROMout[255:0]);
				
	logic [31:0] ROM[255:0];
	
	initial begin
		$readmemh("C:/Users/Rachel/Desktop/Proyecto de Taller/Archivos/instr/ROM.txt",ROM);
	end
	
	assign rdata=ROM[address];
	assign ROMout = ROM;
	
	
endmodule 
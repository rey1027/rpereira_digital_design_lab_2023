module top(input logic clk, reset,
	output logic [31:0] WriteData, DataAdr,
	output logic MemWrite);
	
logic [31:0] PC, Instr, ReadData;
// instantiate processor and memories
arm arm(clk, reset, PC, Instr, MemWrite, DataAdr,WriteData, ReadData);

rom_1 rom(PC,clk, Instr);

ram_1 ram(DataAdr,clk,WriteData,MemWrite,ReadData);

endmodule
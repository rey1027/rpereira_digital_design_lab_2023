module top(input logic clk,reset,
			  output logic [31:0] WriteData, DataAdr,
			  output logic MemWrite,
			  output logic [31:0] RAMout[255:0],
			  output logic [31:0] ROMout[255:0]);
	logic [31:0] mPC, Instr, ReadData;
	logic divclk;
	
	//clkdiv auxclk(clk,divclk);
	
	arm arm(clk,reset, mPC, Instr, MemWrite, DataAdr, WriteData, ReadData);
	
	imem imem(mPC, Instr);
	
	memory mem(clk, MemWrite, DataAdr, WriteData, ReadData, RAMout, ROMout);
	

endmodule
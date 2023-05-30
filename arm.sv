module arm(input  logic        clk, reset,
           output logic [8:0] PC,
           input  logic [31:0] Instr,
           output logic        MemWrite,
           output logic [31:0] ALUResult, WriteData,
           input  logic [31:0] ReadData);

  logic [3:0] ALUFlags;
  logic       RegWrite, ALUSrc,
              MemtoReg, PCSrc;    
  logic [1:0] RegSrc, ImmSrc, ALUControl;
  logic [31:0] q;
  rom_2 rom(PC,clk,q);
  controller c(clk, reset, q[31:12], ALUFlags, RegSrc, RegWriteRegWrite,
					 ImmSrc, ALUSrc, ALUControl, MemWrite, MemToReg, PCSrc);
  datapath dp(clk, reset, 
              RegSrc, RegWrite, ImmSrc,
              ALUSrc, ALUControl,
              MemtoReg, PCSrc,
              ALUFlags, PC, q,
              ALUResult, WriteData, ReadData);
				    
	
				  
	
endmodule
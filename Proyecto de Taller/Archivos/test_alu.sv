module test_alu();

	logic [4:0] SrcA;
	logic [4:0] SrcB;
	logic [3:0] ALUControl;
	logic [5:0] Result;
	logic [3:0] NZVCFlags;
	
	alu #(4) alu(SrcA, SrcB, ALUControl, Result, NZVCFlags);
	
	initial begin 
			SrcA<=4'b0111;
			SrcB<=4'b0001;
			ALUControl<=4'b0000;
			#50;
			SrcB<=4'b0111;
			SrcA<=4'b0001;
			ALUControl<=4'b0001;
			#25;
			SrcA<=4'b0111;
			SrcB<=4'b0001;
			ALUControl<=4'b0010;
			#25;
			SrcA<=4'b0111;
			SrcB<=4'b0001;
			ALUControl<=4'b0011;
			
	end
endmodule
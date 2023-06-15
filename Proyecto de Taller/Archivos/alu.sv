module alu#(parameter N = 32)
	 (input logic  [N-1:0] A, B,
	  input logic  [3:0] ALUControl,
	  output logic [N-1:0] Result,
	  output logic [3:0] NZVCFlags); //Negative, Zero, Carry, Overflow;	

	logic [2*(N-1):0] temp;
	
	always @(ALUControl, Result, A, B, NZVCFlags)
	begin
	case (ALUControl)
	
	4'b0010: temp = A & B; //AND
	
	
	4'b0001: temp = A - B; //SUB
	
	
	4'b0000: temp = A + B; //ADD
	
	
	4'b0011: temp = A | B; //OR
	
	
	4'b0100: temp = A >> B; //LSL
		
	default temp = A & B; //AND
	
	endcase
	
	Result = temp;
	NZVCFlags[3] = (Result[N-1] == 1) ? 1:0;
	NZVCFlags[2] = ((A == B && B == 0) || (Result == 0)) ? 1:0;
	NZVCFlags[1] = (Result[N-1] == 1 && (ALUControl == 4'b0000 || ALUControl == 4'b0001)) ? 1:0;
	NZVCFlags[0] = (temp > Result && NZVCFlags[3] == 0) ? 1:0;
	
	end
	
endmodule

		
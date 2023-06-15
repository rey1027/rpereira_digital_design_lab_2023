module testbench();
	logic clk;
	logic reset;
	logic [31:0] WriteData, DataAdr;
	logic MemWrite;
	logic [31:0] RAMout[255:0];
	logic [31:0] ROMout[255:0];
// instantiate device to be tested
	top dut(clk, reset, WriteData, DataAdr, MemWrite, RAMout, ROMout);
// initialize test
	initial
	begin
		reset <= 1; # 22; reset <= 0;
	end
// generate clock to sequence tests
	always
	begin
		clk <= 1; # 5; clk <= 0; # 5;
	end
	// check that 7 gets written to address 0x64
// at end of program
	always @(negedge clk)
	begin
		if(MemWrite) begin
			if(DataAdr === 100 & WriteData === 7) begin
				$display("Simulation succeeded");
				$stop;
			end else if (DataAdr !== 96) begin
				$display("Simulation failed");
				$stop;
			end
		end
	end
endmodule
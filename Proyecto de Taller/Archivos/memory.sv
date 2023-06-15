module memory(input logic clk, we,
				input logic [31:0] a, wd,
				output logic [31:0] rd,
				output logic [31:0] RAMout[255:0],
				output logic [31:0] ROMout[255:0]);

logic [31:0] rdram;
logic [31:0] rdrom;
logic [31:0] amap;			

				
dmem dmem(clk, we, amap, wd, rdram, RAMout);
ROM rom(amap ,rdrom, ROMout);

	always_comb begin
		if (a <= 255 * 4) begin
			amap = a;
			rd = rdram;
		end
		else begin
			amap = (a - 256*4)/4;
			rd = rdrom;
		end
	end
	
endmodule
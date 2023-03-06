module testbench();
	parameter N = 6;
	logic clk,reset,s,r,d,a;
	logic [N-1 : 0] c;
	logic [3 : 0] bin;
	logic [6 : 0] sseg,bms,bls;
	
	contadr #(N) dut(clk,reset,s,r,d,a,c);
	bintosseg uut(bin,sseg);
	
	initial begin
		clk = 0; reset = 0; s = 1; r = 1; d = 1; a = 1; #5;
		reset = 1; #5;
		reset = 0; #5;
		bin = c[3:0]; #5;
		bls = sseg; #5;
		bin = c[5:4]; #5;
		bms = sseg; #5;
		assert (bms === 7'b0000110) $display("3"); else $display("failed"); #5;
		assert (bls === 7'b0111000) $display("F"); else $display("failed"); #5;
		d = 0; clk = 1; #5;
		clk = 0; #5;
		bin = c[3:0]; #5;
		bls = sseg; #5;
		bin = c[5:4]; #5;
		bms = sseg; #5;
		assert (bms === 7'b0000110) $display("3"); else $display("failed"); #5;
		assert (bls === 7'b0110000) $display("E"); else $display("failed"); #5;
		d = 0; clk = 1; #5;
		clk = 0; #5;
		bin = c[3:0]; #5;
		bls = sseg; #5;
		bin = c[5:4]; #5;
		bms = sseg; #5;
		assert (bms === 7'b0000110) $display("3"); else $display("failed"); #5;
		assert (bls === 7'b1000010) $display("D"); else $display("failed"); #5;
		a = 0 ; d = 0; clk = 1; #5;
		clk = 0; #5;
		bin = c[3:0]; #5;
		bls = sseg; #5;
		bin = c[5:4]; #5;
		bms = sseg; #5;
		assert (bms === 7'b0000110) $display("3"); else $display("failed"); #5;
		assert (bls === 7'b1000010) $display("D"); else $display("failed"); #5;
		a = 1 ; d = 0; clk = 1; #5;
		clk = 0; #5;
		bin = c[3:0]; #5;
		bls = sseg; #5;
		bin = c[5:4]; #5;
		bms = sseg; #5;
		assert (bms === 7'b0000110) $display("3"); else $display("failed"); #5;
		assert (bls === 7'b0110001) $display("C"); else $display("failed"); #5;

	end	
endmodule
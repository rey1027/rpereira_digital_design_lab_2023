module testbench();
	parameter N = 2;
	logic clk,reset,s,r,d,a;
	logic [N-1 : 0] c;
	logic [3 : 0] bin;
	logic [6 : 0] sseg,bms,bls;
	
	contador #(N) cont(clk,reset,s,r,d,a,c);
	bintosseg bts(bin,sseg);
	
	initial begin
		clk = 0; reset = 0; s = 1; r = 1; d = 1; a = 1; #5;
		reset = 1; #5;
		reset = 0; #5;
		//bin = c[3:0]; #5;
		//bls = sseg; #5;
		//bin = c[5:4]; #5;
		//bms = sseg; #5;
		//assert (bms === 7'b0110000) $display("3"); else $display("failed"); #5;
		//assert (bls === 7'b0001110) $display("F"); else $display("failed"); #5;
		assert (c === 2**N - 1) $display("11"); else $display("failed"); #5;
		d = 0; clk = 1; #5;
		clk = 0; #5;
		//bin = c[3:0]; #5;
		//bls = sseg; #5;
		//bin = c[5:4]; #5;
		//bms = sseg; #5;
		//assert (bms === 7'b0110000) $display("3"); else $display("failed"); #5;
		//assert (bls === 7'b0000110) $display("E"); else $display("failed"); #5;
		assert (c === 2**N - 2) $display("10"); else $display("failed"); #5;
		d = 0; clk = 1; #5;
		clk = 0; #5;
		//bin = c[3:0]; #5;
		//bls = sseg; #5;
		//bin = c[5:4]; #5;
		//bms = sseg; #5;
		//assert (bms === 7'b0110000) $display("3"); else $display("failed"); #5;
		//assert (bls === 7'b0100001) $display("D"); else $display("failed"); #5;
		assert (c === 2**N - 3) $display("01"); else $display("failed"); #5;
		a = 0 ; d = 0; clk = 1; #5;
		clk = 0; #5;
		//bin = c[3:0]; #5;
		//bls = sseg; #5;
		//bin = c[5:4]; #5;
		//bms = sseg; #5;
		//assert (bms === 7'b0110000) $display("3"); else $display("failed"); #5;
		//assert (bls === 7'b0100001) $display("D"); else $display("failed"); #5;
		assert (c === 2**N - 3) $display("01"); else $display("failed"); #5;
		a = 1 ; d = 0; clk = 1; #5;
		clk = 0; #5;
		//bin = c[3:0]; #5;
		//bls = sseg; #5;
		//bin = c[5:4]; #5;
		//bms = sseg; #5;
		//assert (bms === 7'b0110000) $display("3"); else $display("failed"); #5;
		//assert (bls === 7'b1000110) $display("C"); else $display("failed"); #5;
		assert (c === 2**N - 4) $display("00"); else $display("failed"); #5;
		a = 1 ; d = 0; clk = 1; #5;
		clk = 0; #5;
		//bin = c[3:0]; #5;
		//bls = sseg; #5;
		//bin = c[5:4]; #5;
		//bms = sseg; #5;
		//assert (bms === 7'b0110000) $display("3"); else $display("failed"); #5;
		//assert (bls === 7'b0000011) $display("B"); else $display("failed"); #5;
		assert (c === 2**N - 1) $display("11"); else $display("failed"); #5;

	end	
endmodule
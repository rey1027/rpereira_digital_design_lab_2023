module testbench();
	parameter N = 4;
	logic [N-1 : 0] a,b;
	logic [3 : 0] s;
	logic caIn,fn,fz,fo,fc;
	logic [N-1 : 0] out;
	
	alu #(N) alu1(a,b,s,caIn,out,fn,fz,fo,fc);
	
	initial begin
		a = 4'b1001; b = 4'b1010; s = 4'b0000; caIn = 0; #5;
		assert (out === 4'b0011) $display("sum"); else $display("failed"); #5;
		assert (fc === 1) $display("flag carry"); else $display("failed"); #5;
		a = 4'b1001; b = 4'b1010; s = 4'b0001; caIn = 0; #5;
		assert (out === 4'b0001) $display("res"); else $display("failed"); #5;
		assert (fn === 1) $display("flag negative"); else $display("failed"); #5;
		a = 4'b1001; b = 4'b1010; s = 4'b0100; caIn = 0; #5;
		assert (out === 4'b1000) $display("and"); else $display("failed"); #5;
		a = 4'b1001; b = 4'b1010; s = 4'b1001; caIn = 0; #5;
		assert (out === 4'b0110) $display("not"); else $display("failed"); #5;
		a = 4'b1001; b = 4'b1010; s = 4'b0110; caIn = 0; #5;
		assert (out === 4'b0011) $display("xor"); else $display("failed"); #5;
		a = 4'b0000; b = 4'b1010; s = 4'b1111; caIn = 0; #5;
		assert (fz === 1) $display("flag zero"); else $display("failed"); #5;

	end

endmodule
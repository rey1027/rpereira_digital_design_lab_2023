module alu#(parameter N = 4)(input logic [N-1 : 0] a,
			  input logic [N-1 : 0] b,
			  input logic [3 : 0] s,
			  input logic caIn,
			  output logic [N-1 : 0] out,
			  output logic fn,fz,fo,fc);
			  
		logic [N-1 : 0] sum;
		logic [N-1 : 0] res;
		logic [N-1 : 0] lsl;
		logic [N-1 : 0] lrl;
		logic [N-1 : 0] and_g;
		logic [N-1 : 0] or_g;
		logic [N-1 : 0] xor_g;
		logic [N-1 : 0] lsll;
		logic [N-1 : 0] lrll;
		logic [N-1 : 0] not_g;	
		
		
		sumador_n #(N) sum1(.A(a),.B(b),.caIn(caIn),.sum(sum),.caOut(fc));
		restador_n #(N) res1(.A(a),.B(b),.caIn(caIn),.res(res),.caOut(fn));
		lsl_arithmetic #(N) lsl1(.data_in(a),.shift_amount(b),.data_out(lsl));
		lrl_arithmetic #(N) lrl1(.data_in(a),.shift_amount(b),.data_out(lrl));
		and_gate_n #(N) and1(.a(a),.b(b),.output_1(and_g));
		or_gate_n #(N) or1(.a(a),.b(b),.output_1(or_g));
		xor_gate_n #(N) xor1(.a(a),.b(b),.output_1(xor_g));
		lsl_logic #(N) lsl2(.data_in(a),.shift_amount(b),.data_out(lsll));
		lrl_logic #(N) lrl2(.data_in(a),.shift_amount(b),.data_out(lrll));
		n_not_gate #(N) not1(.a(a),.output_1(not_g));
		mux_ #(N) mux1(.s(s),.e0(sum),.e1(res),.e2(lsl),.e3(lrl),.e4(and_g),.e5(or_g),.e6(xor_g),.e7(lsll),.e8(lrll),.e9(not_g),.e10(a),.e11(a),.e12(a),.e13(a),.e14(a),.e15(a),.out(out));	
		zeroflag #(N) zf(.in(out),.out(fz));
		
endmodule
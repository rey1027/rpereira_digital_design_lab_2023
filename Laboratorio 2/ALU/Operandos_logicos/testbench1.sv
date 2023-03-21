module testbench1();

	parameter N=2;

	logic [N-1:0] a,b,output1;

	and_gate_n #(.N(2)) and_gate_n(a,b,output1);

	initial begin 
				a = 2'b11;
				b = 2'b10;
				#40
				assert (output1 === 2'b10);
				$display ("Passed");
	end

endmodule
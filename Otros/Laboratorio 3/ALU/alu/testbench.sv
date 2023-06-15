module testbench();
	parameter N = 4;
	logic [N-1 : 0] a,b;
	logic [3 : 0] s;
	logic fn,fz,fo,fc;
	logic [N-1 : 0] out;
	
	alu #(N) alu1(a,b,s,out,fn,fz,fo,fc);
	
	initial begin
	//Suma
		a = 4'b1001; b = 4'b1010; s = 4'b0000; 
		#10;
		assert (out === 4'b0011) $display("SUMA"); else $display("failed sum ");
		$display("s = %b, a = %b, b = %b, out = %b, fn = %b, fz = %b, fo = %b, fc = %b",
             s, a, b,  out, fn, fz, fo, fc);
				 
		a = 4'b1001; b = 4'b0110; s = 4'b0000; 
		#10;
		assert (out === 4'b1111) $display("SUMA"); else $display("failed sum ");
		$display("s = %b,a = %b, b = %b,  out = %b, fn = %b, fz = %b, fo = %b, fc = %b",
             s,a, b,  out, fn, fz, fo, fc);		 
		
		//Resta
		#10;
		a = 4'b1001; b = 4'b1010; s = 4'b0001; #10;
		assert (out === 4'b1111) $display("RESTA"); else $display("failed res ");
		$display("s = %b,a = %b, b = %b,  out = %b, fn = %b, fz = %b, fo = %b, fc = %b",
             s, a, b,  out, fn, fz, fo, fc);
		#10;
		a = 4'b0111; b = 4'b0100; s = 4'b0001; #10;
		assert (out === 4'b0011) $display("RESTA"); else $display("failed res ");
		$display("s = %b,a = %b, b = %b,  out = %b, fn = %b, fz = %b, fo = %b, fc = %b",
             s, a, b,  out, fn, fz, fo, fc);
	
				 
		//Shif Letf Aritmetico
		#10;
		a = 4'b1001; b = 4'b0001; s = 4'b0010;  #10;
		assert (out === 4'b0010) $display("SLA"); else $display("failed "); 
		$display("s = %b,a = %b, b = %b,  out = %b, fn = %b, fz = %b, fo = %b, fc = %b",
             s,a, b,  out, fn, fz, fo, fc);
				 #10;
		a = 4'b0011; b = 4'b0110; s = 4'b0010;  #10;
		assert (out === 4'b0000) $display("SLA"); else $display("failed "); 
		$display("s = %b,a = %b, b = %b,  out = %b, fn = %b, fz = %b, fo = %b, fc = %b",
             s,a, b,  out, fn, fz, fo, fc);

      //Shif Right Aritmetico 
		#10;	
		a = 4'b1000; b = 4'b0001; s = 4'b0011;  #10;
		assert (out === 4'b1100) $display("SRA"); else $display("failed "); 
		$display("s = %b,a = %b, b = %b,  out = %b, fn = %b, fz = %b, fo = %b, fc = %b",
             s,a, b,  out, fn, fz, fo, fc);	
				 
		#10;
		a = 4'b1011; b = 4'b0001; s = 4'b0011;  #10;
		assert (out === 4'b1101) $display("SRA"); else $display("failed "); 
		$display("s = %b,a = %b, b = %b,  out = %b, fn = %b, fz = %b, fo = %b, fc = %b",
             s,a, b,  out, fn, fz, fo, fc);		 
		//AND		 
		#10;
		a = 4'b1001; b = 4'b1010; s = 4'b0100;  #10;
		assert (out === 4'b1000) $display("AND"); else $display("failed AND"); 
		$display("s = %b,a = %b, b = %b,  out = %b, fn = %b, fz = %b, fo = %b, fc = %b",
             s,a, b,  out, fn, fz, fo, fc);		 
		#10;
		a = 4'b1011; b = 4'b0010; s = 4'b0100;  #10;
		assert (out === 4'b0010) $display("AND"); else $display("failed AND"); 
		$display("s = %b,a = %b, b = %b,  out = %b, fn = %b, fz = %b, fo = %b, fc = %b",
             s,a, b,  out, fn, fz, fo, fc);			 
		
		//OR	
		#10;
		a = 4'b1001; b = 4'b1010; s = 4'b0101; #10;
		assert (out === 4'b1011) $display("OR"); else $display("failed OR");
		$display("s = %b,a = %b, b = %b,  out = %b, fn = %b, fz = %b, fo = %b, fc = %b",
             s,a, b,  out, fn, fz, fo, fc);
		#10;
		a = 4'b1110; b = 4'b0001; s = 4'b0101; #10;
		assert (out === 4'b1111) $display("OR"); else $display("failed OR");
		$display("s = %b,a = %b, b = %b,  out = %b, fn = %b, fz = %b, fo = %b, fc = %b",
             s,a, b,  out, fn, fz, fo, fc);
		
		//XOR
		#10;
		a = 4'b1001; b = 4'b1010; s = 4'b0110; #10;
		assert (out === 4'b0011) $display("XOR"); else $display("failed W=XOR");
		$display("s = %b,a = %b, b = %b,  out = %b, fn = %b, fz = %b, fo = %b, fc = %b",
             s,a, b,  out, fn, fz, fo, fc);		 
		#10;
		a = 4'b1010; b = 4'b0011; s = 4'b0110; #10;
		assert (out === 4'b1001) $display("XOR"); else $display("failed W=XOR");
		$display("s = %b,a = %b, b = %b,  out = %b, fn = %b, fz = %b, fo = %b, fc = %b",
             s,a, b,  out, fn, fz, fo, fc);	
				 
		//Shif Letf Logico
		#10;
		a = 4'b1001; b = 4'b0010; s = 4'b0111;  #10;
		assert (out === 4'b0100) $display("SLL"); else $display("failed SLL"); 
		$display("s = %b,a = %b, b = %b,  out = %b, fn = %b, fz = %b, fo = %b, fc = %b",
             s,a, b,  out, fn, fz, fo, fc);
				 #10;
		a = 4'b0011; b = 4'b0001; s = 4'b0111;  #10;
		assert (out === 4'b0110) $display("SLL"); else $display("failed SLL"); 
		$display("s = %b,a = %b, b = %b,  out = %b, fn = %b, fz = %b, fo = %b, fc = %b",
             s,a, b,  out, fn, fz, fo, fc);

      //Shif Right Logico	
		#10;	
		a = 4'b1000; b = 4'b0010; s = 4'b1000;  #10;
		assert (out === 4'b0010) $display("SRL"); else $display("failed "); 
		$display("s = %b,a = %b, b = %b,  out = %b, fn = %b, fz = %b, fo = %b, fc = %b",
             s,a, b,  out, fn, fz, fo, fc);	
				 
		#10;
		a = 4'b1011; b = 4'b0001; s = 4'b1000;  #10;
		assert (out === 4'b0101) $display("SRL"); else $display("failed "); 
		$display("s = %b,a = %b, b = %b,  out = %b, fn = %b, fz = %b, fo = %b, fc = %b",
             s,a, b,  out, fn, fz, fo, fc);		
				 
		//NOT		 
		#10;
		a = 4'b1001; b = 4'b1010; s = 4'b1001; #10;
		assert (out === 4'b0110) $display("not"); else $display("failed not");
		$display("s = %b,a = %b, b = %b,  out = %b, fn = %b, fz = %b, fo = %b, fc = %b",
             s,a, b,  out, fn, fz, fo, fc);		 
		#10;
		a = 4'b1010; b = 4'b1010; s = 4'b1001; #10;
		assert (out === 4'b0101) $display("not"); else $display("failed not");
		$display("s = %b,a = %b, b = %b,  out = %b, fn = %b, fz = %b, fo = %b, fc = %b",
             s,a, b,  out, fn, fz, fo, fc);
		
				 
		//Flag Cero		 
		#10;
		a = 4'b0000; b = 4'b1010; s = 4'b1111; #10;
		assert (fz === 1) $display("flag zero"); else $display("failed fz");
		$display("s = %b,a = %b, b = %b,  out = %b, fn = %b, fz = %b, fo = %b, fc = %b",
             s,a, b,  out, fn, fz, fo, fc);		 
		
		#10;

	end
endmodule
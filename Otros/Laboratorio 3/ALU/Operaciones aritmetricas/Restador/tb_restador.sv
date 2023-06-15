module tb_restador();
	reg a, b, cin;
    wire res, cout;

    restador_1bit r1 (a, b, cin, res, cout);

    // Estímulos
  initial begin
	a = 0;b = 0;cin = 0;
	#20;
	a = 0;b = 1;cin = 0;
	#20;
	a = 1;b = 0;cin = 0;
   #20;
	a = 1;b = 1;cin = 0;
	#20;
	a = 0;b = 0;cin = 1;
   #20; 
	a = 1;b = 0;cin = 1;
   #20;
	a = 0;b = 1;cin = 1;
   #20; 
	a = 1;b = 1;cin = 1; 
   #20;
	$finish;
  end
  
  // Monitoreo de resultados
  always @(res, cout) begin
    $display("cin=%b a=%b b=%b |res=%b cout=%b  ",cin, a, b, res,  cout);
  end

endmodule

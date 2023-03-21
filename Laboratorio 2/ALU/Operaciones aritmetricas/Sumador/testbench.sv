module testbench();
// Definición de señales
  reg a, b, carry_in;
  wire sum, carry_out;
  
  // Instanciación del módulo sumador_un_bit
  sumador_1bit dut(a, b, carry_in, sum, carry_out);
  
  // Estímulos
  initial begin
	a = 0;b = 0;carry_in = 0;
	#20;
	a = 0;b = 1;carry_in = 0;
	#20;
	a = 1;b = 0;carry_in = 0;
   #20;
	a = 1;b = 1;carry_in = 0;
	#20;
	a = 0;b = 0;carry_in = 1;
   #20; 
	a = 1;b = 0;carry_in = 1;
   #20;
	a = 0;b = 1;carry_in = 1;
   #20; 
	a = 1;b = 1;carry_in = 1; 
   #20;
	$finish;
  end
  
  // Monitoreo de resultados
  always @(sum, carry_out) begin
    $display("a=%b b=%b carry_in=%b  carry_out=%b  sum=%b", a, b, carry_in, carry_out, sum);
  end
    
endmodule
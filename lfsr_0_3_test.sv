module lfsr_0_3_test;
 reg clk;
 reg reset;
 int rand_out;

 lfsr_0_3 uut (
 .clk(clk), 
  .reset(reset), 
 .rand_out(rand_out)
 );
 
 initial begin
  clk = 0;
  forever
   #50 clk = ~clk;
  end
  
 initial begin
  reset = 0;
  #100;
      reset = 1;
  #200;
  reset = 0;
 end
 
 initial begin
 $display("clock rnd");
 $monitor("%b,%b", clk, rand_out);
 end      
endmodule

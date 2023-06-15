module memory_tb;

  logic clk;
  logic we;
  logic [31:0] a;
  logic [31:0] wd;
  logic [31:0] rd;
  
  // Instantiate memory module
  memory dut(
    .clk(clk),
    .we(we),
    .a(a),
    .wd(wd),
    .rd(rd)
  );
  
  // Define test stimuli
  initial begin
    // Initialize inputs
    clk = 0;
    we = 1;
    a = 0;
    wd = 32'hA5A5A5A5;
    
    // Apply stimulus
    #10;
    we = 0;
    a = 4;
    
    #10;
    a = 1028;
    
    #10;
    a = 256;
    
    #10;
    a = 1024;
    
    // Wait for some time to observe the outputs
    #50;
    
    // End simulation
    $finish;
  end
  
  // Clock generation
  always #5 clk = ~clk;
  
  
endmodule
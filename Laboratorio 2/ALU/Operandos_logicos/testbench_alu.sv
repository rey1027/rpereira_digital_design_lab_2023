module testbench_alu();

  parameter N = 5;
  //Inputs
  logic [N-1:0] data_in;
  logic [N-1:0] shift_amount;

  // Outputs
  logic [N-1:0] data_out;
  
  //n_not_gate #(.N(N)) dut(
  //.a(data_in),
  //.output_1(data_out));
  
 or_gate_n #(.N(N)) dut(
 .a(data_in),
 .b(shift_amount),
 .output_1(data_out));
  
   //and_gate_n #(.N(N)) dut(
  //.a(data_in),
  //.b(shift_amount),
  //.output_1(data_out));
  
   //xor_gate_n #(.N(N)) dut(
  //.a(data_in),
  //.b(shift_amount),
  //.output_1(data_out));
  
  //lsl_logic #(.N(N)) dut(
  //.data_in(data_in),
  //.shift_amount(shift_amount),
  //.data_out(data_out)
  //);
  
  //lsl_arithmetic #(.N(N)) dut(
  //.data_in(data_in),
  //.shift_amount(shift_amount),
  //.data_out(data_out));
  
  //lrl_logic #(.N(N)) dut(
  //.data_in(data_in),
  //.shift_amount(shift_amount),
  //.data_out(data_out)
  //);
  
  //lrl_arithmetic #(.N(N)) dut(
  //.data_in(data_in),
  //.shift_amount(shift_amount),
  //.data_out(data_out));
  
  initial begin
    $monitor("a = %b, output = %b", data_in, data_out);
    
    // Test case 0: 
    data_in = 5'b11001;
    shift_amount = 5'b00000;
    #1;

	 //Case 1: 
	data_in = 5'b11001;
	shift_amount = 5'b00001;
	#1;
	 
	 //Case 2: 
	data_in = 5'b11001;
	shift_amount = 5'b00010;
	#1;
	 //Case 3:
	data_in = 5'b11001;
	shift_amount = 5'b00011;
	#1;
	 
	 //Case 4:
	data_in = 5'b11001;
	shift_amount = 5'b00100;
	#1;
	 
	 //Case 5:
	data_in = 5'b11001;
	shift_amount = 5'b00101;
	#1;
    $display("All test cases passed!");
    $finish;
  end
  
endmodule

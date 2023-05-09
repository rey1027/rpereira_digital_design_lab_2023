module matrix_tb;
reg [15:0] data_in;
integer row_sel;
integer col_sel;
wire [15:0] matrix [0:3][0:3];

matrix_4_4 dut(data_in,row_sel,col_sel,matrix);

initial begin
    data_in = 16'h1234;
    row_sel = 0;
    col_sel = 1;
    #10
	 
	 data_in = 16'h1111;
    row_sel = 1;
    col_sel = 1;
    #10
	 
	 data_in = 16'h3333;
    row_sel = 2;
    col_sel = 2;
    #10
	 
	 data_in = 16'h5555;
    row_sel = 3;
    col_sel = 3;
    #10
	 
	 data_in = 16'h1010;
    row_sel = 2;
    col_sel = 2;
    #10
	 
	 data_in = 16'h000;
    row_sel = 0;
    col_sel = 0;
    #10
	 
    $finish;
end

endmodule

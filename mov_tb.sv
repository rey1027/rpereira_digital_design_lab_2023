module mov_tb;

logic [1:0] dir;
logic [15:0] inmatrix[0:3][0:3];
logic [15:0] outmatrix[0:3][0:3];
reg [15:0] data_in;
integer row_sel;
integer col_sel;
logic [15:0] matrix [0:3][0:3];
logic winflag;
logic [15:0] con;


addAndmov mov(dir, inmatrix, outmatrix);
matrix_4_4 dut(data_in,row_sel,col_sel,matrix);
win win1(con,matrix,winflag);

initial begin

// first row
    data_in = 16'h0002;
    row_sel = 0;
    col_sel = 0;
    #10;
	 data_in = 16'h0002;
    row_sel = 0;
    col_sel = 1;
    #10;
	 data_in = 16'h0004;
    row_sel = 0;
    col_sel = 2;
    #10;
	 data_in = 16'h0020;
    row_sel = 0;
    col_sel = 3;
    #10;
// second row
    data_in = 16'h0000;
    row_sel = 1;
    col_sel = 0;
    #10;
	 data_in = 16'h0004;
    row_sel = 1;
    col_sel = 1;
    #10;
	 data_in = 16'h0000;
    row_sel = 1;
    col_sel = 2;
    #10;
	 data_in = 16'h0008;
    row_sel = 1;
    col_sel = 3;
    #10;
// third row
    data_in = 16'h0000;
    row_sel = 2;
    col_sel = 0;
    #10;
	 data_in = 16'h0040;
    row_sel = 2;
    col_sel = 1;
    #10;
	 data_in = 16'h0040;
    row_sel = 2;
    col_sel = 2;
    #10;
	 data_in = 16'h0020;
    row_sel = 2;
    col_sel = 3;
    #10;
// fourth row
    data_in = 16'h0000;
    row_sel = 3;
    col_sel = 0;
    #10;
	 data_in = 16'h0002;
    row_sel = 3;
    col_sel = 1;
    #10;
	 data_in = 16'h0004;
    row_sel = 3;
    col_sel = 2;
    #10;
	 data_in = 16'h0002;
    row_sel = 3;
    col_sel = 3;
    #10;
	 
	 dir = 2'b00;
	 inmatrix = matrix; #100;
	 matrix = outmatrix; #100;
	 dir = 2'b11;
	 inmatrix = matrix; #100;
	 matrix = outmatrix; #100; 
	 dir = 2'b01;	 	 
	 inmatrix = matrix; #100;
	 matrix = outmatrix; #100;
	 dir = 2'b10;	 	 
	 inmatrix = matrix; #100;
	 matrix = outmatrix; #100;
	 
	 con = 16'h0040; #10;
	 
		 
	 
end

endmodule

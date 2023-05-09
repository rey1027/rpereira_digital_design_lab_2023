module controller_game(
	 input logic clk,
    input  logic [3:0] dir,
    input logic [15:0] score,
	 input logic [15:0] inmatrix[0:3][0:3],
	 output  logic [15:0] new_score, 
	 output logic win,
	 output logic lose,
	 output logic[15:0] outmatrix[0:3][0:3]
);
 
 logic [15:0] auxmatrix[0:3][0:3];
 logic [15:0] con = 16;
 
 
 addAndmov mov(.clk(clk),.dir(dir),.score(score),.inmatrix(inmatrix),.new_score(new_score),.outmatrix(auxmatrix));
 
 random_number newnum(auxmatrix,outmatrix);
 
 win win_2(.con(con),.inmatrix(outmatrix),.winflag(win));
 
 check_loss check_loss_2(.matrix(outmatrix),.check_loss(lose));
 
 
endmodule
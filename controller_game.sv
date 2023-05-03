module controller_game(
    input  logic [3:0] dir,
	 input  logic [15:0] score,  
	 input  logic [15:0] inmatrix[0:3][0:3],
	 ouput  logic [15:0] new_score, 
	 output logic [15:0] outmatrix[0:3][0:3],
	 output logic win,
	 output logic lose
);
 
 addAndmov mov(.dir(dir),.score(score),.inmatrix(inmatrix),.new_score(new_score),.outmatrix(outmatrix));
 
 win win_2(.con(16'h0080),.inmatrix.(outmatrix),.winflag(win));
 
 check_loss check_loss_2(.matrix(outmatrix),.check_loss(lose));
 
endmodule	
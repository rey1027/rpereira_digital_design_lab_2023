module game2048 (
  input clk,
  input reset,
  input move_up,
  input move_down,
  input move_left,
  input move_right,
  output [15:0] board,
  output score
);

  // Define states
  parameter START = 0;
  parameter MOVE_UP = 1;
  parameter MOVE_DOWN = 2;
  parameter MOVE_LEFT = 3;
  parameter MOVE_RIGHT = 4;
  
  // Define outputs
  reg [15:0] board_reg;
  assign board = board_reg;
  reg score2;
  assign score=score2;
  //Output del score 
  //Output de que gano 
  //Output que perdio 
  
  // Define internal signals
  reg [3:0] state_reg;
  
  // Define state machine
  always @(posedge clk) begin
    if (reset) begin
      state_reg <= START;
      board_reg <= 16'h0000;
		//score2<=0;
    end else begin
      case (state_reg)
        START: begin
          if (move_up) state_reg <= MOVE_UP;
          else if (move_down) state_reg <= MOVE_DOWN;
          else if (move_left) state_reg <= MOVE_LEFT;
          else if (move_right) state_reg <= MOVE_RIGHT;
        end
        MOVE_UP: begin
          // Implement logic to move tiles up
          // Update board_reg
          //state_reg <= START;
			 if (move_down) state_reg <= MOVE_DOWN;
          else if (move_left) state_reg <= MOVE_LEFT;
          else if (move_right) state_reg <= MOVE_RIGHT;
			 else state_reg<=MOVE_UP;
        end
        MOVE_DOWN: begin
          // Implement logic to move tiles down and combime them 
          // Update board_reg
			 //Implement logic to determine winning 
			 //Implement logic to determine lossing 
			 //Implement logic to generete 2 random tiles 
			 if (move_down) state_reg <= MOVE_DOWN;
          else if (move_left) state_reg <= MOVE_LEFT;
          else if (move_right) state_reg <= MOVE_RIGHT;
			 else state_reg<=MOVE_UP; 
        end
        MOVE_LEFT: begin
          // Implement logic to move tiles down and combime them 
          // Update board_reg
			 //Implement logic to determine winning
			 //Implement logic to determine lossing 
			 //Implement logic to generete 2 random tiles
			 if (move_down) state_reg <= MOVE_DOWN;
          else if (move_left) state_reg <= MOVE_LEFT;
          else if (move_right) state_reg <= MOVE_RIGHT;
			 else state_reg<=MOVE_UP; 
        end
        MOVE_RIGHT: begin
          // Implement logic to move tiles down and combime them 
          // Update board_reg
			 //Implement logic to determine winning
			 //Implement logic to determine lossing 
			 //Implement logic to generete 2 random tiles
			 if (move_down) state_reg <= MOVE_DOWN;
          else if (move_left) state_reg <= MOVE_LEFT;
          else if (move_right) state_reg <= MOVE_RIGHT;
			 else state_reg<=MOVE_UP;
			 
        end
      endcase
    end
  end
  
endmodule

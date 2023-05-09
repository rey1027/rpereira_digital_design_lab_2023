module hextosseg(
	input logic [15:0] score,
	output logic [6:0] s0,s1,s2,s3
);




bintosseg seg0(.bin(score[3:0]),.sseg(s0));
bintosseg seg1(.bin(score[7:4]),.sseg(s1));
bintosseg seg2(.bin(score[11:8]),.sseg(s2));
bintosseg seg3(.bin(score[15:12]),.sseg(s3));


endmodule
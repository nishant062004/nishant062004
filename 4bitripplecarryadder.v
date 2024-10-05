//to design 4 bit ripple carry adder using verilog
module FA(
	input a,b,cin,
	output c,s
	);
		assign {c,s}=a+b+cin;
endmodule
module RCA(
	input [3:0] A,B,
	input Cin,
	output [4:0] result
	);
	wire carry;
	wire [3:0]sum;
	wire carry1,carry2,carry3,carry;
	FA FA1(A[0],B[0],Cin,carry1,sum[0]);
	FA FA2(A[1],B[1],Cin,carry2,sum[1]);
	FA FA3(A[2],B[2],Cin,carry3,sum[2]);
	FA FA4(A[3],B[3],Cin,carry4,sum[3]);
	
	assign result={carry,sum};
endmodule
	
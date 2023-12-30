module twoBitRCA(input [1:0] A, input [1:0] B, input Cin, output [1:0] Sum,
output Cout);
    wire co;
    fulladder i1 (.A(A[0]), .B(B[0]), .Cin(Cin), .Sum(Sum[0]), .Cout(co));
    fulladder i2 (.A(A[1]), .B(B[1]), .Cin(co), .Sum(Sum[1]), .Cout(Cout));
endmodule

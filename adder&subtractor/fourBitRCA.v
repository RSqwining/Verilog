module fourBitRCA(input [3:0] A, input [3:0] B, input Cin, output [3:0] Sum, output Cout);
  wire co[2:0];
  fulladder i1 (.A(A[0]), .B(B[0]), .Cin(Cin), .Sum(Sum[0]), .Cout(co[0]));
  fulladder i2 (.A(A[1]), .B(B[1]), .Cin(co[0]), .Sum(Sum[1]), .Cout(co[1]));
  fulladder i3 (.A(A[2]), .B(B[2]), .Cin(co[1]), .Sum(Sum[2]), .Cout(co[2]));
  fulladder i4 (.A(A[3]), .B(B[3]), .Cin(co[2]), .Sum(Sum[3]), .Cout(Cout));
endmodule

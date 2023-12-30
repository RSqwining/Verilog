module fulladder(
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
    );
    wire s1, c1, c2;
    halfadder i1(.A(A), .B(B), .Sum(s1), .Cout(c1));
    halfadder i2(.A(Cin), .B(s1), .Sum(Sum), .Cout(c2));
    or (Cout, c1, c2);
endmodule
module halfadder(input A, input B, output Sum, output Cout);
    not (a1, A);
    not (b1, B);
    or (i1, A,B);
    or (i2, a1,b1);
    and (Cout, A,B);
    and (Sum, i1,i2);
endmodule

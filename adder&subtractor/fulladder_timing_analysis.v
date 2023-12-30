module fulladder(  //run fulladder_tb with these given time delays
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
    );
    wire s1, c1, c2;
    halfadder i1(.A(A), .B(B), .Sum(s1), .Cout(c1));
    halfadder i2(.A(Cin), .B(s1), .Sum(Sum), .Cout(c2));
    or #50 (Cout, c1, c2);
endmodule
module halfadder(input A, input B, output Sum, output Cout);
    not #10 (a1, A);
    not #10 (b1, B);
    or #50 (i1, A,B);
    or #50 (i2, a1,b1);
    and #50 (Cout, A,B);
    and #50 (Sum, i1,i2);
endmodule

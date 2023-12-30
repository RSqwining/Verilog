module fourBitCounter(input clock, input reset, input count, output
wire[3:0] out);
    wire [3:0] MUX, RCA;
    reg Cin = 0;
    wire Cout;
    fourBitRCA a (.A(out), .B(0001), .Cin(0), .Sum(RCA), .Cout(Cout));
    multiplex m0(.A(RCA[0]), .B(out[0]), .sel(count), .out(MUX[0]));
    dflipflop d0(.clock(clock), .D(MUX[0]), .R(reset), .Q(out[0]));
    multiplex m1(.A(RCA[1]), .B(out[1]), .sel(count), .out(MUX[1]));
    dflipflop d1(.clock(clock), .D(MUX[1]), .R(reset), .Q(out[1]));
    multiplex m2(.A(RCA[2]), .B(out[2]), .sel(count), .out(MUX[2]));
    dflipflop d2(.clock(clock), .D(MUX[2]), .R(reset), .Q(out[2]));
    multiplex m3(.A(RCA[3]), .B(out[3]), .sel(count), .out(MUX[3]));
    dflipflop d3(.clock(clock), .D(MUX[3]), .R(reset), .Q(out[3]));
endmodule
module dflipflop(input clock, input D, input R, output reg Q);
always @(posedge clock or negedge R)
   begin
    if (R == 1)
    begin
Q=D;
end
    else
    begin
Q=0;
end
end
endmodule
module fourBitRCA(input [3:0] A, input [3:0] B, input Cin, output [3:0]
Sum, output Cout);
    wire co[2:0];
    fulladder i1 (.A(A[0]), .B(B[0]), .Cin(Cin), .Sum(Sum[0]),
.Cout(co[0]));
    fulladder i2 (.A(A[1]), .B(B[1]), .Cin(co[0]), .Sum(Sum[1]),
.Cout(co[1]));
    fulladder i3 (.A(A[2]), .B(B[2]), .Cin(co[1]), .Sum(Sum[2]),
.Cout(co[2]));
    fulladder i4 (.A(A[3]), .B(B[3]), .Cin(co[2]), .Sum(Sum[3]),
.Cout(Cout));
endmodule
module fulladder(input A, input B, input Cin, output Sum, output Cout);
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
module multiplex(input A, input B, input sel, output out);
    and(tnode, A, sel);
    and(bnode, B, ~sel);
    or(out, tnode, bnode);
endmodule

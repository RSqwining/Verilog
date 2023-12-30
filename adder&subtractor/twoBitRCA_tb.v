module twoBitRCA_tb();
    reg [1:0] A ;
    reg [1:0] B;
    reg Cin;
    wire [1:0] Sum;
    wire Cout;
    integer i;
    integer j;
    twoBitRCA i1(.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));
    initial
      begin
            Cin = 0;
            B[1:0] = 00-1;
            for(i=0; i<3; i=i+1) begin
                A[1:0] = 00-1;
                B[1:0] = B[1:0] + 01;
                for(j=0; j<3; j=j+1) begin
                    A[1:0] = A[1:0] + 01;
                    #1;
                end
            end
      end
endmodule

module fulladder_tb();
    reg A, B, Cin;
    wire Sum, Cout;
    fulladder i1 (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));
    initial
      begin
            Cin = 0;
            A = 0;
            B = 0;
            #10;
            B = 1; #10;
            A = 1;
            B = 0;
            #10;
            B = 1; #10;
            Cin = 1;
            A = 0;
            B = 0;
            #10;
            B = 1; #10;
            A = 1;
            B = 0;
            #10;
            B = 1;
            #10; 
    end
endmodule

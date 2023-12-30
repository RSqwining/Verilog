`timescale 1ns / 1ps
module twocomplement_tb();
  reg [3:0] A ;
  reg [3:0] B;
  reg Cin;
  wire [3:0] Sum;
  wire Cout;
  fourBitRCA i1(.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));
  initial
    begin
      Cin = 1;
      A[3:0] = 0000 - 1;
      B[3:0] = 0000;
      for(integer i=0; i<16; i=i+1) begin
          B[3:0] = 0000 - 1;
          for(integer j=0; j<16; j=j+1) begin
              A[3:0] = A[3:0] + 0001;
              #1; 
          end
      end 
    end
endmodule

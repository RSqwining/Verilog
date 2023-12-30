module fourstateMooreMachine(out, reset, in, clock);
output[2:0] out;
input reset, in, clock;
reg [2:0] out;
reg [1:0] nstate, pstate;
parameter s0=2'b00, s1=2'b01, s2=2'b11, s3=2'b10;
always @(in or pstate)
begin
    case(pstate)
    s0: begin
        out <= 1;
            if (in == 1)
                nstate <= s1;
            else nstate <= s0;
        end
    s1: begin
        out <= 2;
            if (in == 1)
            nstate <= s2;
            else nstate <= s1;
      end
    s2: begin
        out <= 3;
            if (in == 1)
            nstate <= s3;
            else nstate <= s2;
      end
    s3: begin
        out <= 4;
            if (in == 1)
            nstate <= s1;
            else nstate <= s3;
      end
    default: begin
        out <= 1;
        state <= s0;
end
endcase 
end
always @(posedge clock or negedge reset)
    begin
    if(reset == 1)
        pstate <= nstate;
    else
      pstate <= s0;
    end
endmodule

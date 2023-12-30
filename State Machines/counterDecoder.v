module counterDecoder(out, pstate, stop, clock);
output reg out;
input stop, clock;
reg [2:0] nstate;
output reg [2:0] pstate;

always @(posedge clock)
begin
    case(pstate)
    0: begin
        out <= 0;
            if (stop == 0)
                nstate <= 1;
            else nstate <= 0;
        end
    1: begin
        out <= 0;
            if (stop == 0)
                nstate <= 2;
            else nstate <= 1;
        end 
    2: begin
        out <= 1;
            if (stop == 0)
                nstate <= 3;
        else nstate <= 2;
        end
    3: begin
        out <= 0;
        if (stop == 0)
            nstate <= 4;
        else nstate <= 3;
      end
    4: begin
        out <= 0;
        if (stop == 0)
            nstate <= 5;
        else nstate <= 4;
      end
    5: begin
        out <= 0;
        if (stop == 0)
            nstate <= 6;
        else nstate <= 5;
      end
    6: begin
    out <= 0;
    if (stop == 0)
        nstate <= 7;
    else nstate <= 6;
    end
    7: begin
    out <= 0;
    if (stop == 0)
        nstate <= 0;
    else nstate <= 7;
    end
    default: begin
    out <= 0;
    nstate <= 0;
    end 
    endcase
   pstate <= nstate;
end
endmodule

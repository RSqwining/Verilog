module multiplex_tb;
    reg A, B, sel;
    wire D;
    multiplex il (.A (A), .B (B), .sel (sel), .out (D));
    initial
begin
// selector 1
            sel = 1;
            A <= 1;
            B <= 0;
            #10;
            A <= 0;
            B <= 0;
            #10;
            A <= 0;
            B <= 1;
            #10;
            A <= 1; 
            B <= 1;
            #10;
            // selector 0
            A <= 1;
            B <= 0;
            sel <= 0;
            #10;
            A <= 0;
            B <= 0;
            #10;
            A <= 0;
            B <= 1;
            #10;
            A <= 1;
            B <= 1;
            #10;
end
endmodule

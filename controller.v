/* Module for controller (moore machine) */
module controller(IncA, IncB, WEA, WEB, ps, ns, Reset, clock);

/* Define I/O */
output IncA, IncB, WEA, WEB, ps, ns;
input Reset, clock;

/* Define reg and wires */
reg IncA, IncB, WEA, WEB;
reg [4:0] ps;
reg [4:0] ns;

always @ (posedge clock or posedge Reset)
begin
    ps = ns; /* Move to the next state */
    if(Reset)
    begin
        IncA <= 1'b0;
        IncB <= 1'b0;
        WEA <= 1'b0;
        WEB <= 1'b0;
        ns <= 5'b00000;
    end
    
    /* Reset = 0, continue with state machine logic */
    else
    begin
        case(ps)
            5'b00000:
            begin
                IncA <= 1'b1;
                WEA <= 1'b1;
                ns <= 5'b00001;
            end
            
            5'b00001:
            begin
                IncA <= 1'b1;
                WEA <= 1'b1;
                ns <= 5'b00010;
            end

            5'b00010:
            begin
                IncA <= 1'b1;
                WEA <= 1'b1;
                ns <= 5'b00011;
            end
            
            5'b00011:
            begin
                IncA <= 1'b1;
                WEA <= 1'b1;
                ns <= 5'b00100;
            end

            5'b00100:
            begin
                IncA <= 1'b1;
                WEA <= 1'b1;
                ns <= 5'b00101;
            end
            
            5'b00101:
            begin
                IncA <= 1'b1;
                WEA <= 1'b1;
                ns <= 5'd00110;
            end

            5'b00110:
            begin
                IncA <= 1'b1;
                WEA <= 1'b1;
                ns <= 5'b00111;
            end
            
            5'b00111:
            begin
                IncA <= 1'b1;
                WEA <= 1'b1;
                ns <= 5'b01000;
            end

            5'b01000:
            begin
                IncA <= 1'b1;
                WEA <= 1'b1;
                ns <= 5'b01001;
            end
            
            5'b01001:
            begin
                IncA <= 1'b1;
                WEA <= 1'b0;
                ns <= 5'b01010;
            end

            5'b01010:
            begin
                IncA <= 1'b1;
                ns <= 5'b01011;
            end

            5'b01011:
            begin
                IncA <= 1'b1;
                WEB <= 1'b1;
                ns <= 5'b01100;
            end

            5'b01100:
            begin
                IncA <= 1'b1;
                WEB <= 1'b0;
                IncB = 1'b1;
                ns <= 5'b01101;
            end

            5'b01101:
            begin
                IncA <= 1'b1;
                WEB <= 1'b1;
                IncB = 1'b0;
                ns <= 5'b01110;
            end

            5'b01110:
            begin
                IncA <= 1'b1;
                WEB <= 1'b0;
                IncB <= 1'b1;
                ns <= 5'b01111;
            end

            5'b01111:
            begin
                IncA <= 1'b1;
                WEB <= 1'b1;
                IncB <= 1'b0;
                ns <= 5'b10000;
            end

            5'b10000:
            begin
                IncA <= 1'b1;
                WEB <= 1'b0;
                IncB <= 1'b1;
                ns <= 5'b10001;
            end

            5'b10001:
            begin
                IncA <= 1'b0;
                WEB <= 1'b1;
                IncB <= 1'b0;
                ns <= 5'b10010;
            end
            
            5'b10010:
            begin
                WEB <= 1'b0;
                IncB <= 1'b1;
                ns <= 5'b00000;
            end
        endcase
    end
end

endmodule
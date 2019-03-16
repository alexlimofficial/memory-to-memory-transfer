module counterB(AddrB, IncB, Reset, clock);

/* Define I/O */
output [1:0]AddrB;
input IncB, Reset, clock;

/* Define reg and wires */
reg [1:0]AddrB;

/* The counter will increment by 1 for each posedge of the clock */
always @ (posedge clock or posedge Reset)
begin
    /* Reset the counter to 0 if Reset is high */
    if (Reset==1)
    begin
        AddrB <= 2'b0;
    end

    /* Else if IncB control signal is 1, then increment AddrB */
    else
    begin
        if (IncB==1)
        begin
            AddrB <= AddrB + 2'b1;
        end
    end
end

endmodule
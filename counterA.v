module counterA(AddrA, IncA, Reset, clock);

/* define I/O */
output [2:0]AddrA;
input IncA, Reset, clock;

/* define reg and wires */
reg [2:0]AddrA;

/* The counter will increment by 1 for each posedge of the clock */
always @ (posedge clock or posedge Reset)
begin
    /* Reset the counter to 0 if Reset is high */
    if (Reset==1)
    begin
        AddrA <= 3'b0;
    end

    /* Else if IncA control signal is 1, then increment AddrA */
    else
    begin
         if (IncA==1)
         begin
            AddrA <= AddrA + 3'b1;
         end   
    end
end

endmodule
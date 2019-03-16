module counterA_test;

/* All test fixture outputs are declared as reg statements */
reg IncA, Reset, clock;

/* All test fixture inputs are declared as wire statements */
wire [2:0]AddrA;

/* Module instantiation here */
counterA uut (.AddrA(AddrA),
            .IncA(IncA),
            .Reset(Reset),
            .clock(clock));

/* Verification vectors here */
initial
begin
   IncA = 0; Reset = 1; clock = 1;
#5 IncA = 1; Reset = 0; clock = 0;
#5 IncA = 1; Reset = 0; clock = 1;
#5 IncA = 1; Reset = 0; clock = 0;
#5 IncA = 0; Reset = 0; clock = 1;
#5 IncA = 1; Reset = 0; clock = 0;
#5 IncA = 1; Reset = 0; clock = 1;
#5 IncA = 1; Reset = 0; clock = 0;
#5 IncA = 1; Reset = 0; clock = 1;
#5 IncA = 1; Reset = 0; clock = 0;
#5 IncA = 0; Reset = 0; clock = 1;
#5 IncA = 1; Reset = 0; clock = 0;
#5 IncA = 1; Reset = 0; clock = 1;
#5 IncA = 1; Reset = 0; clock = 0;
#5 IncA = 1; Reset = 0; clock = 1;
#5 IncA = 1; Reset = 0; clock = 0;
#5 IncA = 1; Reset = 0; clock = 1;
#5 IncA = 1; Reset = 0; clock = 0;
#5 IncA = 1; Reset = 0; clock = 1;
#5 IncA = 1; Reset = 0; clock = 0;
#5 IncA = 1; Reset = 0; clock = 1;
#5 IncA = 1; Reset = 1; clock = 0;
#5 IncA = 1; Reset = 0; clock = 1;
end

endmodule
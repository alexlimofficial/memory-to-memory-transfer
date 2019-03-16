module counterB_test;

/* All test fixture outputs are declared as reg statements */
reg IncB, Reset, clock;

/* All test fixture inputs are declared as wire statements */
wire [1:0]AddrB;

/* Module instantiation here */
counterB uut (.AddrB(AddrB),
             .IncB(IncB),
             .Reset(Reset),
             .clock(clock));

/* Verification vectors here */
initial
begin
    IncB = 0; Reset = 1; clock = 1;
#5  IncB = 1; Reset = 0; clock = 0;
#5  IncB = 1; Reset = 0; clock = 1;
#5  IncB = 1; Reset = 0; clock = 0;
#5  IncB = 0; Reset = 0; clock = 1;
#5  IncB = 1; Reset = 0; clock = 0;
#5  IncB = 1; Reset = 0; clock = 1;
#5  IncB = 1; Reset = 0; clock = 0;
#5  IncB = 1; Reset = 0; clock = 1;
#5  IncB = 1; Reset = 0; clock = 0;
#5  IncB = 0; Reset = 0; clock = 1;
#5  IncB = 1; Reset = 0; clock = 0;
#5  IncB = 1; Reset = 0; clock = 1;
#5  IncB = 1; Reset = 0; clock = 0;
#5  IncB = 1; Reset = 0; clock = 1;
#5  IncB = 1; Reset = 1; clock = 0;
#5  IncB = 1; Reset = 0; clock = 1; 
end

endmodule

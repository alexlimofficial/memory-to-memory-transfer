module controller_test;

/* All test fixture outputs are declared as reg statements */
reg clock, Reset;

/* All test fixture inputs are declared as wire statements */
wire IncA, IncB, WEA, WEB;
wire [4:0]ps;   /* For verification purposes */
wire [4:0]ns;   /* For verification purposes */

/* Module instantiation */
controller uut (.clock(clock),
                .Reset(Reset),
                .IncA(IncA),
                .IncB(IncB),
                .WEA(WEA),
                .WEB(WEB),
                .ps(ps),
                .ns(ns));

/* Verification vectors here */
initial
begin
    clock = 1'b1; Reset = 1'b1;
#2                Reset = 1'b0;
end

always #2 clock = ~clock;

endmodule

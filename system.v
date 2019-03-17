module system(clock, Reset, DataInA, WEA, WEB, IncA, IncB, Sign, AddrA, AddrB, DOut1, DOut2, ADDOut, SUBOut, DataInB, ps, ns);

/* Define I/O */
input clock, Reset;
input [7:0]DataInA;

/* Define wires that connect module ports */
output wire WEA, WEB, IncA, IncB, Sign;
output wire [2:0]AddrA;
output wire [1:0]AddrB;
output wire [7:0]DOut1;
output wire [7:0]DOut2;
output wire [7:0]ADDOut;
output wire [7:0]SUBOut;
output wire [7:0]DataInB;
output wire [4:0]ps;
output wire [4:0]ns;

/* Call sub-modules */
controller co(.IncA(IncA), .IncB(IncB), .WEA(WEA), .WEB(WEB), .ps(ps), .ns(ns), .Reset(Reset), .clock(clock));
counterA ca(.AddrA(AddrA), .IncA(IncA), .Reset(Reset), .clock(clock));
counterB cb(.AddrB(AddrB), .IncB(IncB), .Reset(Reset), .clock(clock));
memoryA ma(.DOut1(DOut1), .AddrA(AddrA), .WEA(WEA), .DataInA(DataInA), .clock(clock));
memoryB mb(.AddrB(AddrB), .WEB(WEB), .DataInB(DataInB), .clock(clock));
dff d1(.DOut2(DOut2), .DOut1(DOut1), .clock(clock));
comparator cm(.Sign(Sign), .DOut2(DOut2), .DOut1(DOut1));
adder a1(.ADDOut(ADDOut), .DOut2(DOut2), .DOut1(DOut1));
subtractor s1(.SUBOut(SUBOut), .DOut2(DOut2), .DOut1(DOut1));
mux m1(.DataInB(DataInB), .Sign(Sign), .ADDOut(ADDOut), .SUBOut(SUBOut));

endmodule
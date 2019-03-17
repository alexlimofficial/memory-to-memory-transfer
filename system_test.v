`include "system.v"

module system_test;

/* All test fixture outputs are declared as reg statements */
reg clock, Reset;
reg [7:0]DataInA;

/* All test fixture inputs are declared as wire statements */
wire WEA, WEB, IncA, IncB;
wire [2:0]AddrA;
wire [1:0]AddrB;
wire [7:0]DOut1;
wire [7:0]DOut2;
wire [7:0]ADDOut;
wire [7:0]SUBOut;
wire [7:0]DataInB;
wire [4:0]ps;
wire [4:0]ns;

/* Module instantiation here */
system uut (.clock(clock),
            .Reset(Reset),
            .AddrA(AddrA),
            .DataInA(DataInA),
            .DOut1(DOut1),
            .DOut2(DOut2),
            .ADDOut(ADDOut),
            .SUBOut(SUBOut),
            .AddrB(AddrB),
            .ps(ps),
            .ns(ns),
            .WEA(WEA),
            .IncA(IncA),
            .WEB(WEB),
            .IncB(IncB));

/* Verification vectors here */
initial 
begin
     Reset = 1'b1; clock = 1'b1;
#10  Reset = 1'b0;
#10  DataInA = 8'b00000000;
#10  DataInA = 8'b00000001;
#10  DataInA = 8'b00000010;
#10  DataInA = 8'b00000011;
#10  DataInA = 8'b00000100;
#10  DataInA = 8'b00000101;
#10  DataInA = 8'b00000110;
#10  DataInA = 8'b00000111;
end

always 
begin
#5 clock = ~clock;
end


endmodule
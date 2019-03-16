module subtractor_test;

/* All test fixture outputs are declared as reg statements */
reg [7:0]DOut2;
reg [7:0]DOut1;

/* All test fixtures inputs are declared as wire statements */
wire [7:0]SUBOut;

/* Module instantiation */
subtractor uut (.SUBOut(SUBOut),
                .DOut2(DOut2),
                .DOut1(DOut1));

/* Verification vectors here */
/* 8-bits = Signed range of -128 to +127 */
initial
begin
    DOut2 = 8'b01111111; DOut1 = 8'b00000000;  /* DOu2 > DOut1 */
#5  DOut2 = 8'b00011111; DOut1 = 8'b11110000;  /* DOut(+) DOut1(-) */
#5  DOut2 = 8'b11110000; DOut1 = 8'b00011100;  /* DOut(-) DOut1(+) */
#5  DOut2 = 8'b10000000; DOut1 = 8'b00000001;  /* "underflow" case */
#5  DOut2 = 8'b01111111; DOut1 = 8'b11111111;  /* "overflow" case */
end

endmodule
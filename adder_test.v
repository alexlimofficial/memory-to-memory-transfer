module adder_test;

/* All test fixture outputs are declared as reg statements */
reg [7:0]DOut2;
reg [7:0]DOut1;

/* All test fixture inputs are declared as wire statements */
wire [7:0]ADDOut;

/* Module instantiation here */
adder uut (.ADDOut(ADDOut),
           .DOut2(DOut2),
           .DOut1(DOut1));

/* Verification vectors here */
/* 8-bits = Signed range of -128 to +127 */
initial
begin
    DOut1 = 8'b00000000; DOut2 = 8'b01111111;  /* positive case */
#5  DOut1 = 8'b00000000; DOut2 = 8'b11111111;  /* all 1s case */
#5  DOut1 = 8'b00100010; DOut2 = 8'b01001001;  /* positive positive */
#5  DOut1 = 8'b11100000; DOut2 = 8'b11000111;  /* negative negative */
#5  DOut1 = 8'b01111111; DOut2 = 8'b00000001;  /* "overflow" case */
#5  DOut1 = 8'b10000000; DOut2 = 8'b11111111;  /* "underflow" case */
end

endmodule
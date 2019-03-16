module comparator_test;

/* All test fixture outputs are declared as reg statements */
reg [7:0]DOut2;
reg [7:0]DOut1;

/* All test fixture inputs are declared as wire statements */
wire Sign;

/* Module instantiation here */
comparator uut (.DOut2(DOut2),
                .DOut1(DOut1),
                .Sign(Sign));

/* Verification vectors here */
initial
begin
    DOut2 = 8'b00000000; DOut1 = 8'b00000000;  /* equal case, expect Sign = 0 */
#5  DOut2 = 8'b01111111; DOut1 = 8'b00000001;  /* DOut2(+) > DOut1(+), expect Sign = 0 */
#5  DOut2 = 8'b01111111; DOut1 = 8'b10000000;  /* DOut2(+) > DOut1(-), expect SIgn = 0 */
#5  DOut2 = 8'b10000000; DOut1 = 8'b11111111;  /* DOut2(-) < DOut1(-), expect Sign = 1 */
#5  DOut2 = 8'b11111111; DOut1 = 8'b10000000;  /* DOut2(-) > DOut1(-), expect Sign = 0 */
end

endmodule
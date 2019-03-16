module dff_test;

/* All test fixture outputs are declared as reg statements */
reg [7:0]DOut1;
reg clock;

/* All test fixture inputs are declared as wire statements */
wire [7:0]DOut2;

/* Module instantiation here */
dff uut (.DOut2(DOut2),
         .DOut1(DOut1),
         .clock(clock));

/* Verification vectors here */
initial
begin
    d = 8'b00000000; clock = 1;
#5  d = 8'b11111111; clock = 0;
#5  d = 8'b11111111; clock = 1; 
#5  d = 8'b11111111; clock = 0; 
#5  d = 8'b01010101; clock = 1;
#5  d = 8'b01010101; clock = 0;
end

endmodule
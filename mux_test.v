module mux_test;

/* All test fixture outputs are declared as reg statements */
reg Sign;
reg [7:0]ADDOut;
reg [7:0]SUBOut;

/* All test fixture inputs are declared as wire statements */
wire [7:0]DataInB;

/* Module instantiation here */
mux uut (.DataInB(DataInB),
         .Sign(Sign),
         .ADDOut(ADDOut),
         .SUBOut(SUBOut));

/* Verification vectors here */
initial
begin
    Sign = 0; ADDOut = 8'b11111111; SUBOut = 8'b00000000;
#5  Sign = 1; 
#5  Sign = 0; ADDOut = 8'b00110011; SUBOut = 8'b00000001; 
#5  Sign = 1;
end

endmodule
module memoryA_test;

/* All test fixture outputs are declared as reg statements */
reg [2:0]AddrA;
reg WEA;
reg [7:0]DataInA;
reg clock;

/* All test fixture inputs are declared as wire statements */
wire [7:0]DOut1;

/* Module instantiation */
memoryA uut (.AddrA(AddrA),
             .WEA(WEA),
             .DataInA(DataInA),
             .clock(clock),
             .DOut1(DOut1));

/* Verification vectors here */
initial
begin
    AddrA = 3'b000; WEA = 1; DataInA = 8'b11111111; clock = 0;

                /* Write to the memory */
#5  AddrA = 3'b000; WEA = 1; DataInA = 8'b11111111; clock = 1;
#5                                                  clock = 0;
#5  AddrA = 3'b001; WEA = 1; DataInA = 8'b00000000; clock = 1;
#5                                                  clock = 0;
#5  AddrA = 3'b010; WEA = 1; DataInA = 8'b00000010; clock = 1;
#5                                                  clock = 0;
#5  AddrA = 3'b011; WEA = 1; DataInA = 8'b00000100; clock = 1;
#5                                                  clock = 0;
#5  AddrA = 3'b100; WEA = 1; DataInA = 8'b00001000; clock = 1;
#5                                                  clock = 0;
#5  AddrA = 3'b101; WEA = 1; DataInA = 8'b00010000; clock = 1;
#5                                                  clock = 0;
#5  AddrA = 3'b110; WEA = 1; DataInA = 8'b00100000; clock = 1;
#5                                                  clock = 0;
#5  AddrA = 3'b111; WEA = 1; DataInA = 8'b01000000; clock = 1;
#5                                                  clock = 0;
    /* Read from the memory */
#5  AddrA = 3'b000; WEA = 0; clock = 1;
#5                           clock = 0;
#5  AddrA = 3'b001; WEA = 0; clock = 1;
#5                           clock = 0;
#5  AddrA = 3'b010; WEA = 0; clock = 1;
#5                           clock = 0;
#5  AddrA = 3'b011; WEA = 0; clock = 1;
#5                           clock = 0;
#5  AddrA = 3'b100; WEA = 0; clock = 1;
#5                           clock = 0;
#5  AddrA = 3'b101; WEA = 0; clock = 1;
#5                           clock = 0;
#5  AddrA = 3'b110; WEA = 0; clock = 1;
#5                           clock = 0;
#5  AddrA = 3'b111; WEA = 0; clock = 1;
end

endmodule

module memoryB_test;

/* All test fixture outputs are declared as reg statements */
reg [1:0]AddrB;
reg WEB;
reg [7:0]DataInB;
reg clock;

/* All test fixture inputs are declared as wire statements */
wire [7:0]DOutB;

/* Module instantiation */
memoryB uut (.AddrB(AddrB),
             .WEB(WEB),
             .DataInB(DataInB),
             .clock(clock),
             .DOutB(DOutB));

/* Verification vectors here */
initial
begin
    AddrB = 2'b00; WEB = 1; DataInB = 8'b11111111; clock = 0;

                /* Write to the memory */
#5  AddrB = 2'b00; WEB = 1; DataInB = 8'b11111111; clock = 1;
#5                                                 clock = 0;
#5  AddrB = 2'b01; WEB = 1; DataInB = 8'b00000001; clock = 1;
#5                                                 clock = 0;
#5  AddrB = 2'b10; WEB = 1; DataInB = 8'b00000100; clock = 1;
#5                                                 clock = 0;
#5  AddrB = 2'b11; WEB = 1; DataInB = 8'b00100000; clock = 1;
#5                                                 clock = 0;

    /* Read from the memory */
#5  AddrB = 2'b00; WEB = 0; clock = 1;
#5                          clock = 0;
#5  AddrB = 2'b01; WEB = 0; clock = 1;
#5                          clock = 0;
#5  AddrB = 2'b10; WEB = 0; clock = 1;
#5                          clock = 0;
#5  AddrB = 2'b11; WEB = 0; clock = 1;
end

endmodule


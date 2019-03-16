/* Module for 8x8 source memory */
module memoryA(DOut1, AddrA, WEA, DataInA, clock);

/* Define I/O */
output [7:0]DOut1;
input [2:0]AddrA;
input WEA;
input [7:0]DataInA;
input clock;

/* Define reg and wires */
reg [7:0]memA[0:7];
reg [7:0]DOut1;

always @ (posedge clock)
begin
    if(WEA)
    begin
        memA[AddrA] <= DataInA;
    end

    else
    begin
        DOut1 <= memA[AddrA];
    end
end

endmodule
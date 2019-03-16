/* Module for 8x4 target memory */
module memoryB(DOutB, AddrB, WEB, DataInB, clock);

/* Define I/O */
output [7:0]DOutB;
input [1:0]AddrB;
input WEB;
input [7:0]DataInB;
input clock;

/* Define reg and wires */
reg [7:0]memB[0:3];
reg [7:0]DOutB;

always @ (posedge clock)
begin
    if(WEB)
    begin
        memB[AddrB] <= DataInB;
    end

    /* For verification purposes, this datapath is not included in design */
    else
    begin
        DOutB <= memB[AddrB];
    end
end

endmodule


/* Module for 2-to-1 MUX */
module mux(DataInB, Sign, ADDOut, SUBOut);

/* Define I/O */
output [7:0]DataInB;
input Sign;
input [7:0]ADDOut;
input [7:0]SUBOut;

/* Define reg and wires */
reg [7:0]DataInB;

always @ (Sign or ADDOut or SUBOut)
begin
    case(Sign)
    1'b0: DataInB = SUBOut;
    1'b1: DataInB = ADDOut;
    default: DataInB = SUBOut;
    endcase
end

endmodule
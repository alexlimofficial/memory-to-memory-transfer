/* Module for 1-bit D Flip-Flip */
module dff(DOut2, DOut1, clock);

/* Define I/O */
output [7:0]DOut2;
input DOut1, clock;

/* Define reg and wires */
reg [7:0]DOut2;

always @ (posedge clock)
begin
    DOut2 <= DOut1;
end

endmodule


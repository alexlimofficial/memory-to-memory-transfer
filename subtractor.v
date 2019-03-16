/* Module for 8-bit subtractor */
module subtractor(SUBOut, DOut2, DOut1);

/* Define I/O */
output [7:0]SUBOut;
input [7:0]DOut2;
input [7:0]DOut1;

assign SUBOut = DOut2 - DOut1;

endmodule
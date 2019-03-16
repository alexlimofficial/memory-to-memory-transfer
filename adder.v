/* Module for 8-bit adder */
module adder(ADDOut, DOut2, DOut1);

/* Define I/O */
output [7:0]ADDOut;
input [7:0]DOut2; 
input [7:0]DOut1;

assign ADDOut = DOut2 + DOut1;

endmodule

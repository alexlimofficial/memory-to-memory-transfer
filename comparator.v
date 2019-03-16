/* Module for signed comparator */
module comparator(Sign, DOut2, DOut1);

/* Define I/O */
output Sign;
input [7:0]DOut2;
input [7:0]DOut1;

/* Define reg and wires */
reg Sign;

/* Logic for comparator */
always @ (DOut2 or DOut1)
begin
    if($signed(DOut2) >= $signed(DOut1))
    begin
        Sign = 0;
    end

    else
    begin
        Sign = 1;
    end
end

endmodule
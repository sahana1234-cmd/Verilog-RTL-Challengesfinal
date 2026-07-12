module EvenOddFSM(
    input clk,
    input reset,
    input bit_in,
    output reg even

);
//state encoding
parameter EVEN =1'b0;
parameter ODD =1'b1;
reg state;
//update state on every clock edge
always@(posedge clk or posedge reset)begin
    if(reset)
    state<=EVEN;
    else begin
        case(stste)
         EVEN: begin
            if(bit+in)
            state <=ODD;
            else
            state <=EVEN;
         end
         ODD: begin
            if(bit_in)
            state<=EVEN;
            else
            state<=ODD;
         end
         default:
         state<=EVEN;
        endcase
    end
end
//output logic
always @(*)begin
    if(state ==EVEN)
    even =1'b1;
    else
    even=1'b0;
end
endmodule

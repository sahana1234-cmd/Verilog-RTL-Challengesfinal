module BitBalancer(
    input [7:0]data_in,
    output reg [3:0]count

);
always @(*) begin
    // reset count for every new input
    count=0;
//count the number of logic 1s
count =data_in[0] +
       data_in[1] +
       data_in[2] +
       data_in[3] +
       data_in[4] +
       data_in[5] +
       data_in[6] +
       data_in[7];
end 
endmodule

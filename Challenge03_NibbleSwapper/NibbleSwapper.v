module NibbleSwapper(
    input [7:0] data_in,
    input swap,
    output reg [7:0] data_out

);
always @(*) begin//swap upper and lower nibble when control is high 
      if(swap)
        data_out={data_in[3:0].data_in[7:4]};
    else
    //keep the orginla input when control is low
         data_out=data_in;
end 
endmodule
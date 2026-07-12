//shift a sinlgle high bit acrcoss four leds
module LightChaser(
    input clk,
    input reset,
    output reg[3:0] leds

);
always@(posedge clk or posedge reset)begin
    if(reset)
    //start with led on
   if (leds<=4'b1000)
   led<=4'b00001;
   else
   leds<=leds<<1;
end 
end 
endmodule

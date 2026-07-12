module PulseTracker(
    input clk;
    input rst;
    input signal_in;
    output reg pulse_out;

);
reg previous_input;
reg stable_high;
always @(posedge clk) begin
    if(rst)begin
        previous_input<=0;
        stable_high<=0;
        pulse_out<=0;

    end
else begin
end
end

endmodule
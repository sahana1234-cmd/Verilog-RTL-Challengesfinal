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

    endq
else begin
    pulse_out<=0;
    if(signal_in && previous_input && !stable_high)begin
        stable_high<=1;
        pulse_out<=1;
    end
    else if(!signal_in)begin
        stable_high<=0;

    end
previous_input<=signal_in;
    end

end

endmodule
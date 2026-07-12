// Challenge 10 - EdgeHighlighter
// Detects rising and falling edges

module EdgeHighlighter(
    input clk,
    input reset,
    input signal_in,
    output reg rising_pulse,
    output reg falling_pulse
);

reg previous_input;

always @(posedge clk or posedge reset) begin

    if (reset) begin
        previous_input <= 0;
        rising_pulse <= 0;
        falling_pulse <= 0;
    end
    else begin

        // Default outputs
        rising_pulse <= 0;
        falling_pulse <= 0;

        // Rising edge
        if (!previous_input && signal_in)
            rising_pulse <= 1;

        // Falling edge
        else if (previous_input && !signal_in)
            falling_pulse <= 1;

        // Save current input
        previous_input <= signal_in;

    end

end

endmodules
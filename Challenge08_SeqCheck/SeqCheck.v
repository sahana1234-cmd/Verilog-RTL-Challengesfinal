// Challenge 8 - SeqCheck
// Detects the serial sequence 101

module SeqCheck(
    input clk,
    input reset,
    input serial_in,
    output reg detected
);

    parameter S0 = 2'b00;
    parameter S1 = 2'b01;
    parameter S2 = 2'b10;

    reg [1:0] state;

    always @(posedge clk or posedge reset) begin

        if (reset) begin
            state <= S0;
            detected <= 0;
        end
        else begin

            // Default output
            detected <= 0;

            case(state)

                S0: begin
                    if(serial_in)
                        state <= S1;
                end

                S1: begin
                    if(serial_in)
                        state <= S1;
                    else
                        state <= S2;
                end

                S2: begin
                    if(serial_in) begin
                        detected <= 1;
                        state <= S1;
                    end
                    else
                        state <= S0;
                end

                default:
                    state <= S0;

            endcase

        end

    end

endmodule
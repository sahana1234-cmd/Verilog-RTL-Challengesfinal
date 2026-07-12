// Challenge 9 - RotatorUnit
// Rotates an 8-bit value left or right by one bit

module RotatorUnit(
    input clk,
    input reset,
    input direction,
    input [7:0] data_in,
    output reg [7:0] data_out
);

always @(posedge clk or posedge reset) begin

    if (reset)
        data_out <= 8'b00000000;

    else begin

        // Rotate left
        if (direction == 0)
            data_out <= {data_in[6:0], data_in[7]};

        // Rotate right
        else
            data_out <= {data_in[0], data_in[7:1]};

    end

end

endmodule
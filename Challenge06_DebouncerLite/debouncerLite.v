module DebouncerLite(
    input clk,
    input reset,
    input button_in,
    output reg debounced_out
);
reg previous_input;
alwayas@(posedge clk or posedge reset)begin
    if(reset)begin
        previous_input<=0;
        debounced_out<=0;
    end 
    else begin
        //update output only if two consecutive inputs smatch
        if(button_in == previous_input)
        debounced_out<=button_in;
        //store current input for next comparison
        previous_input<=button_in;
    end 
end 
endmodule
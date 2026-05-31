module pc(

    input clk,
    input reset,

    output reg [7:0] pc_value

);

always @(posedge clk or posedge reset) begin

    if(reset)
        pc_value <= 0;

    else
        pc_value <= pc_value + 1;

end

endmodule
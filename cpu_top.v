module cpu_top(

    input clk,
    input reset

);

wire [7:0] pc_value;

pc PC(

    .clk(clk),
    .reset(reset),
    .pc_value(pc_value)

);

wire [15:0] alu_result;

wire [15:0] a;
wire [15:0] b;

wire [1:0] alu_op;

assign a = 16'd10;
assign b = 16'd5;
assign alu_op = 2'b00;

alu ALU(

    .a(a),
    .b(b),
    .alu_op(alu_op),
    .result(alu_result)

);

endmodule
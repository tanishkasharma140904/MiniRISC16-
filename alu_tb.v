module alu_tb;

reg [15:0] a;
reg [15:0] b;
reg [1:0] alu_op;

wire [15:0] result;

alu uut(
    .a(a),
    .b(b),
    .alu_op(alu_op),
    .result(result)
);

initial begin

    $display("===== ALU TEST START =====");

    a = 10;
    b = 5;

    alu_op = 2'b00;
    #10;
    $display("ADD: %d", result);

    alu_op = 2'b01;
    #10;
    $display("SUB: %d", result);

    alu_op = 2'b10;
    #10;
    $display("AND: %d", result);

    alu_op = 2'b11;
    #10;
    $display("OR : %d", result);

    $display("===== ALU TEST END =====");

end

endmodule
module control_unit_tb;

reg [2:0] opcode;

wire write_enable;
wire [1:0] alu_op;
wire halt;

control_unit uut(
    .opcode(opcode),
    .write_enable(write_enable),
    .alu_op(alu_op),
    .halt(halt)
);

initial begin

    opcode = 3'b001;
    #10;
    $display("ADD -> write=%b alu=%b", write_enable, alu_op);

    opcode = 3'b010;
    #10;
    $display("SUB -> write=%b alu=%b", write_enable, alu_op);

    opcode = 3'b111;
    #10;
    $display("HALT -> halt=%b", halt);

    $finish;

end

endmodule
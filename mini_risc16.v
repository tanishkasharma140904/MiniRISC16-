module mini_risc16(

    input clk,
    input reset

);

wire [7:0] pc_value;
wire [15:0] instruction;

wire [2:0] opcode;
wire [2:0] rd;
wire [2:0] rs1;
wire [2:0] rs2;

wire [9:0] immediate;

wire write_enable;
wire [1:0] alu_op;
wire halt;

wire [15:0] read_data1;
wire [15:0] read_data2;

wire [15:0] alu_result;

wire [15:0] write_data;

pc PC(
    .clk(clk),
    .reset(reset),
    .pc_value(pc_value)
);

instruction_memory IM(
    .address(pc_value),
    .instruction(instruction)
);

instruction_decoder DEC(
    .instruction(instruction),
    .opcode(opcode),
    .rd(rd),
    .rs1(rs1),
    .rs2(rs2),
    .immediate(immediate)
);

control_unit CU(
    .opcode(opcode),
    .write_enable(write_enable),
    .alu_op(alu_op),
    .halt(halt)
);

alu ALU(
    .a(read_data1),
    .b(read_data2),
    .alu_op(alu_op),
    .result(alu_result)
);

assign write_data =
    (opcode == 3'b000) ? {6'b000000, immediate} :
                         alu_result;

register_file RF(
    .clk(clk),

    .write_enable(write_enable),
    .write_addr(rd),
    .write_data(write_data),

    .read_addr1(rs1),
    .read_addr2(rs2),

    .read_data1(read_data1),
    .read_data2(read_data2)
);

endmodule
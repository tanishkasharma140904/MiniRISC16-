module instruction_decoder(

    input [15:0] instruction,

    output [2:0] opcode,
    output [2:0] rd,
    output [2:0] rs1,
    output [2:0] rs2,
    output [9:0] immediate

);

assign opcode = instruction[15:13];

assign rd = instruction[12:10];

assign rs1 = instruction[9:7];

assign rs2 = instruction[6:4];

assign immediate = instruction[9:0];

endmodule
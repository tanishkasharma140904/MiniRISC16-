module instruction_decoder_tb;

reg [15:0] instruction;

wire [2:0] opcode;
wire [2:0] rd;
wire [2:0] rs1;
wire [2:0] rs2;

instruction_decoder uut(

    .instruction(instruction),

    .opcode(opcode),
    .rd(rd),
    .rs1(rs1),
    .rs2(rs2)

);

initial begin

    instruction = 16'b0010110010100000;

    #10;

    $display("Opcode = %b", opcode);
    $display("Rd     = %b", rd);
    $display("Rs1    = %b", rs1);
    $display("Rs2    = %b", rs2);

    $finish;

end

endmodule
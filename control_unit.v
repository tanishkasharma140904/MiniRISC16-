module control_unit(

    input [2:0] opcode,

    output reg write_enable,
    output reg [1:0] alu_op,
    output reg halt

);

always @(*) begin

    write_enable = 0;
    alu_op = 2'b00;
    halt = 0;

    case(opcode)

        // MOVI
        3'b000: begin
            write_enable = 1;
        end

        // ADD
        3'b001: begin
            write_enable = 1;
            alu_op = 2'b00;
        end

        // SUB
        3'b010: begin
            write_enable = 1;
            alu_op = 2'b01;
        end

        // AND
        3'b011: begin
            write_enable = 1;
            alu_op = 2'b10;
        end

        // OR
        3'b100: begin
            write_enable = 1;
            alu_op = 2'b11;
        end

        // HALT
        3'b111: begin
            halt = 1;
        end

        default: begin
            write_enable = 0;
            alu_op = 2'b00;
            halt = 0;
        end

    endcase

end

endmodule
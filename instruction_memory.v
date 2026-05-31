module instruction_memory(

    input [7:0] address,

    output [15:0] instruction

);

reg [15:0] memory [0:255];

integer i;

initial begin

    for(i=0; i<256; i=i+1)
        memory[i] = 16'b1110000000000000;

    // MOVI R1,10
    memory[0] = 16'b0000010000001010;

    // MOVI R2,5
    memory[1] = 16'b0000100000000101;

    // ADD R3,R1,R2
    memory[2] = 16'b0010110010100000;

    // SUB R4,R1,R2
    memory[3] = 16'b0101000010100000;

    // AND R5,R1,R2
    memory[4] = 16'b0111010010100000;

    // OR R6,R1,R2
    memory[5] = 16'b1001100010100000;

    // HALT
    memory[6] = 16'b1110000000000000;

end

assign instruction = memory[address];

endmodule
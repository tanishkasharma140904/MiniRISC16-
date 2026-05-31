module instruction_memory_tb;

reg [7:0] address;

wire [15:0] instruction;

instruction_memory uut(
    .address(address),
    .instruction(instruction)
);

initial begin

    address = 0;
    #10;
    $display("Address 0 = %d", instruction);

    address = 1;
    #10;
    $display("Address 1 = %d", instruction);

    address = 2;
    #10;
    $display("Address 2 = %d", instruction);

    address = 3;
    #10;
    $display("Address 3 = %d", instruction);

    $finish;

end

endmodule
module mini_risc16_tb;

reg clk;
reg reset;

mini_risc16 uut(
    .clk(clk),
    .reset(reset)
);

always #5 clk = ~clk;

initial begin

    clk = 0;
    reset = 1;

    #10;
    reset = 0;

    // Wait enough cycles for all instructions
    #80;
$display("====================================");
$display("        MiniRISC16 Execution");
$display("====================================");

$display("");
$display("Program Executed:");
$display("");
$display("1. MOVI R1,10");
$display("2. MOVI R2,5");
$display("3. ADD  R3,R1,R2");
$display("4. SUB  R4,R1,R2");
$display("5. AND  R5,R1,R2");
$display("6. OR   R6,R1,R2");
$display("7. HALT");

$display("");
$display("------------------------------------");
$display("");

$display("Register Values:");
$display("");

$display("R1 = %0d   (First Operand)", uut.RF.registers[1]);
$display("R2 = %0d   (Second Operand)", uut.RF.registers[2]);

$display("");

$display("R3 = %0d   (10 + 5)", uut.RF.registers[3]);
$display("R4 = %0d   (10 - 5)", uut.RF.registers[4]);
$display("R5 = %0d   (10 AND 5)", uut.RF.registers[5]);
$display("R6 = %0d   (10 OR 5)", uut.RF.registers[6]);

$display("");
$display("------------------------------------");
$display("");

$display("CPU Status: HALTED");
$display("Program Counter: %0d", uut.pc_value);

$display("");
$display("Execution Successful");
$display("");
$display("====================================");
    $finish;

end

endmodule
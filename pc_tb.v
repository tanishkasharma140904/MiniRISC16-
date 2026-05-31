module pc_tb;

reg clk;
reg reset;

wire [7:0] pc_value;

pc uut(
    .clk(clk),
    .reset(reset),
    .pc_value(pc_value)
);

always #5 clk = ~clk;

initial begin

    clk = 0;
    reset = 1;

    #10;

    reset = 0;

    #10;
    $display("PC = %d", pc_value);

    #10;
    $display("PC = %d", pc_value);

    #10;
    $display("PC = %d", pc_value);

    #10;
    $display("PC = %d", pc_value);

    $finish;

end

endmodule
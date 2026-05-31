module register_file_tb;

reg clk;

reg write_enable;
reg [2:0] write_addr;
reg [15:0] write_data;

reg [2:0] read_addr1;
reg [2:0] read_addr2;

wire [15:0] read_data1;
wire [15:0] read_data2;

register_file uut(

    .clk(clk),

    .write_enable(write_enable),
    .write_addr(write_addr),
    .write_data(write_data),

    .read_addr1(read_addr1),
    .read_addr2(read_addr2),

    .read_data1(read_data1),
    .read_data2(read_data2)

);

always #5 clk = ~clk;

initial begin

    clk = 0;

    $display("===== REGISTER FILE TEST =====");

    write_enable = 1;

    write_addr = 3'b001;
    write_data = 16'd10;

    #10;

    read_addr1 = 3'b001;

    #10;

    $display("R1 = %d", read_data1);

    write_addr = 3'b011;
    write_data = 16'd25;

    #10;

    read_addr1 = 3'b011;

    #10;

    $display("R3 = %d", read_data1);

    $finish;

end

endmodule
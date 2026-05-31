module register_file(

    input clk,

    input write_enable,
    input [2:0] write_addr,
    input [15:0] write_data,

    input [2:0] read_addr1,
    input [2:0] read_addr2,

    output [15:0] read_data1,
    output [15:0] read_data2

);

reg [15:0] registers [0:7];

integer i;

initial begin

    for(i=0; i<8; i=i+1)
        registers[i] = 0;

    registers[1] = 16'd10;
    registers[2] = 16'd5;

end

assign read_data1 = registers[read_addr1];
assign read_data2 = registers[read_addr2];

always @(posedge clk) begin

    if(write_enable)
        registers[write_addr] <= write_data;

end

endmodule
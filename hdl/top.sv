module top #(
    localparam RST_POL = 1'b0
) (
    input clk,
    input rst,
    
    input wr_en,
    input [31:0] wr_data,
    input [7:0] wr_addr,    // 2^8 = 256 addresses

    input rd_en,
    input [7:0] rd_addr,
    output [31:0] rd_data
);

// Register map 



// k-value
// vector length


// FIFO Test-Data Stream 

// FIFO Train-Data Stream

// FIFO Train-Label Stream



// k-NN algo stream


endmodule
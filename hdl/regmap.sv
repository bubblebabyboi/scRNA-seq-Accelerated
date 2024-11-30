module regmap #(
    localparam RST_POL = 1'b0
    localparam ADDR_WIDTH = 8,
    localparam DATA_WIDTH = 32
)(
    input clk, 
    input rst,

    input wr_en,
    input [ADDR_WIDTH-1:0] wr_addr,
    input [DATA_WIDTH-1:0] wr_data,

    input rd_en,
    input [ADDR_WIDTH-1:0] rd_addr,
    output [DATA_WIDTH-1:0] rd_data
);
    logic [DATA_WIDTH-1:0] regmap [(1 << ADDR_WIDTH)-1:0]; // 256 registers

    always@(posedge clk) begin 
        if (rst == RST_POL) begin 
            rd_data <= 0;

        end else begin
            if (wr_en) begin 
                case (wr_addr)
                    8'h00: regmap[wr_addr] <= wr_data;          // vector dimensions (10,000-50,000)
                    8'h01: regmap[wr_addr] <= wr_data;
                    8'h02: regmap[wr_addr] <= wr_data;
                    8'h03: regmap[wr_addr] <= wr_data;
                    8'h04: regmap[wr_addr] <= wr_data;
                    8'h05: regmap[wr_addr] <= wr_data;
                    8'h06: regmap[wr_addr] <= wr_data;
                    8'h07: regmap[wr_addr] <= wr_data;
                    default: 
                        rd_data <= 32'hDEADDEAD;
                endcase
            end else if (rd_en) begin 

            end 
        end
    end 

endmodule
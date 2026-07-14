module uart_rx(
    input clk,
    input reset,
    input rx,
    output reg [7:0] data_out,
    output reg done
);

reg [3:0] bit_count;
reg [7:0] shift_reg;
reg receiving;

always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        bit_count <= 0;
        shift_reg <= 0;
        data_out <= 0;
        receiving <= 0;
        done <= 0;
    end
    else
    begin
        done <= 0;

        if(!receiving)
        begin
            if(rx == 0)
            begin
                receiving <= 1;
                bit_count <= 0;
            end
        end
        else
        begin
            shift_reg <= {rx, shift_reg[7:1]};
            bit_count <= bit_count + 1;

            if(bit_count == 7)
            begin
                data_out <= {rx, shift_reg[7:1]};
                done <= 1;
                receiving <= 0;
            end
        end
    end
end

endmodule

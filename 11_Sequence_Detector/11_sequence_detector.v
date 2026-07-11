module sequence_detector(
    input clk,
    input reset,
    input din,
    output reg detected
);

parameter S0 = 3'b000,
          S1 = 3'b001,
          S2 = 3'b010,
          S3 = 3'b011,
          S4 = 3'b100;

reg [2:0] state;

always @(posedge clk or posedge reset)
begin
    if (reset)
    begin
        state <= S0;
        detected <= 0;
    end
    else
    begin
        case(state)

        S0:
        begin
            detected <= 0;
            if(din)
                state <= S1;
            else
                state <= S0;
        end

        S1:
        begin
            detected <= 0;
            if(din)
                state <= S1;
            else
                state <= S2;
        end

        S2:
        begin
            detected <= 0;
            if(din)
                state <= S3;
            else
                state <= S0;
        end

        S3:
        begin
            detected <= 0;
            if(din)
                state <= S4;
            else
                state <= S2;
        end

        S4:
        begin
            detected <= 1;
            if(din)
                state <= S1;
            else
                state <= S2;
        end

        default:
        begin
            state <= S0;
            detected <= 0;
        end

        endcase
    end
end

endmodule

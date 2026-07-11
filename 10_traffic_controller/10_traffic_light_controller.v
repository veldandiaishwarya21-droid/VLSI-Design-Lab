module traffic_light_controller(
    input clk,
    input reset,
    output reg [2:0] light
);

parameter RED    = 2'b00,
          GREEN  = 2'b01,
          YELLOW = 2'b10;

reg [1:0] state;

always @(posedge clk or posedge reset)
begin
    if (reset)
        state <= RED;
    else
    begin
        case(state)
            RED:    state <= GREEN;
            GREEN:  state <= YELLOW;
            YELLOW: state <= RED;
            default: state <= RED;
        endcase
    end
end

always @(*)
begin
    case(state)
        RED:    light = 3'b100;
        GREEN:  light = 3'b001;
        YELLOW: light = 3'b010;
        default: light = 3'b100;
    endcase
end

endmodule

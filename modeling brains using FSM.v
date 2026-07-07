module top_module(
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    output walk_left,
    output walk_right); //  

    parameter left=1'b0, right=1'b1;
    reg state, next_state;
    always@(bump_left, bump_right, state) begin
        case(state)
            1'b0: next_state = ((bump_left)? 1:0);
            1'b1: next_state = (bump_right)? 0:1;
        endcase
    end
    always@(posedge clk or posedge areset) begin
        if(areset) begin
           state<=0
        end
        else begin
           state<=next_state; 
         end
    end
    assign walk_left=(state==left);
    assign walk_right=(state==right);
endmodule

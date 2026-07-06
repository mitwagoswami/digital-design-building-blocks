module top_module(
    input clk,
    input load,
    input [255:0] data,
    output [255:0] q ); 
    reg count;
    always@(posedge clk) begin
        if(load) q<=data;
        else begin
            for(i=0,i<256,i++)begin
                if(i%16!=0 && i%16==15
                count=(q[i+1]) + q[i-1] + q[i+17] + q[i+15] + q[i-16-1] + q[i-16+1] + q[i+16] + q[i-16];
            end
            for(i
        end
    end
endmodule

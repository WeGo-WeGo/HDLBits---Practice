module top_module ( input clk, input d, output q );
    wire mid1, mid2;
    my_dff a(.clk(clk), .d(d), .q(mid1));
    my_dff b(.clk(clk),.d(mid1),.q(mid2));
    my_dff c(.clk(clk), .d(mid2), .q(q));
endmodule

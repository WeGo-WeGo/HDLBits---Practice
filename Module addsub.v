module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0] m;
    wire [15:0]  low, high;
    wire cout1;
    assign m = b^{32{sub}};
    add16 adder1(.a(a[15:0]),.b(m[15:0]),.cin(sub),.cout(cout1),.sum(low));
    add16 adder2(.a(a[31:16]),.b(m[31:16]), .cin(cout1),.cout(),.sum(high));
    assign sum = {high, low};

endmodule

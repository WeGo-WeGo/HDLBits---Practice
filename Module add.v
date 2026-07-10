module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] low, high;
    wire couta;
    add16 add1(.a(a[15:0]),.b(b[15:0]),.cin(1'b0),.cout(couta),.sum(low));
    add16 add2(.a(a[31:16]),.b(b[31:16]),.cin(couta),.cout(),.sum(high));
    assign sum = {high, low};


endmodule

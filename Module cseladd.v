module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] high0,high1, low;
    reg [15:0]  high;
    wire cout1;
    add16 adder1(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .cout(cout1), .sum(low));
    add16 adder2(.a(a[31:16]), .b(b[31:16]), .cin(1'b0), .cout(), .sum(high0));
    add16 adder3(.a(a[31:16]), .b(b[31:16]), .cin(1'b1), .cout(), .sum(high1));
    always @(*)	begin
    	case(cout1)
        	1'b0: high = high0;
        	1'b1: high = high1;
        
    	endcase
    end
    assign sum = {high,low};
endmodule

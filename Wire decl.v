`default_nettype none
module top_module(input a,b,c,d , output out,out_n);
    wire a_and_b, c_and_d, m_or_n;
    assign a_and_b = a&b;
    assign c_and_d = c&d;
    assign m_or_n = a_and_b|c_and_d;
    assign out =  m_or_n;
     assign out_n = ~m_or_n;
endmodule
    

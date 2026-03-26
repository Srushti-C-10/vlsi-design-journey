module tb_rca;

reg [3:0] a, b;
reg cin;
wire [3:0] sum;
wire cout;

rca_4bit dut(a, b, cin, sum, cout);

initial begin
    a = 4'b0001; b = 4'b0010; cin = 0; #10;
    a = 4'b0101; b = 4'b0011; cin = 0; #10;
    a = 4'b1111; b = 4'b0001; cin = 0; #10;
end

endmodule

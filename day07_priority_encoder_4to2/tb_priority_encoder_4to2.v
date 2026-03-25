module tb_priority_encoder;
reg d0,d1,d2,d3;
wire y0,y1;

priority_encoder_4to2 dut(d0,d1,d2,d3,y0,y1);

initial begin

{d3,d2,d1,d0}=4'b0001;#10;
{d3,d2,d1,d0}=4'b0010;#10;
{d3,d2,d1,d0}=4'b0100;#10;
{d3,d2,d1,d0}=4'b1000;#10;

{d3,d2,d1,d0}=4'b0011;#10;
{d3,d2,d1,d0}=4'b0111;#10;
{d3,d2,d1,d0}=4'b1010;#10;
{d3,d2,d1,d0}=4'b1111;#10;

{d3,d2,d1,d0}=4'b0000;#10;

$finish;
end
initial
$monitor("Input=d3=%b,d2=%b,d1=%b,d0=%b => Output=y1=%b,y0=%b",d3,d2,d1,d0,y1,y0);
endmodule

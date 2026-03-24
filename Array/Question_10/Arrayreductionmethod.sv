module reduction_example;
reg  [3:0] a;
wire or_r, and_r, xor_r;
wire nand_r, nor_r, xnor_r;
integer i;
reg [3:0] sum;
assign or_r   = |a;    
assign and_r  = &a;    
assign xor_r  = ^a;    
assign nand_r = ~&a;   
assign nor_r  = ~|a;   
assign xnor_r = ~^a;   
always @(*) begin
 sum = 0;
 for (i = 0; i < 4; i = i + 1)
  sum = sum + a[i];
 end
 initial begin
  a = 4'b1101;
 #1;
$display("Input a = %b", a);
$display("OR   = %b", or_r);
$display("AND  = %b", and_r);
$display("XOR  = %b", xor_r);
$display("NAND = %b", nand_r);
$display("NOR  = %b", nor_r);
$display("XNOR = %b", xnor_r);
$display("SUM  = %d", sum);
#10 $finish;
end
endmodule

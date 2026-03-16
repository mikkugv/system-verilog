module packed_array_example;
bit   [3:0]  abc = 4'b0110;
logic [15:0] pqr = 16'h10FE;
reg   [7:0]  xyz = 8'd16;
initial begin
$display("Value of abc = %b", abc);
$display("Value of pqr = %h", pqr);
$display("Value of xyz = %d", xyz);
end
endmodule

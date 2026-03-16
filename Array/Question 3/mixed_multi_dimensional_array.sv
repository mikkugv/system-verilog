module mixed_multi_array;
 bit [7:0] data [3:0][1:0];
 initial begin
 data[0][0] = 8'd10;
 data[0][1] = 8'd20;
 data[1][0] = 8'd30;
 data[1][1] = 8'd40;
 data[2][0] = 8'd50;
 data[2][1] = 8'd60;
 data[3][0] = 8'd70;
 data[3][1] = 8'd80;
 $display("data[0][0] = %0d",data[0][0]);
 $display("data[0][1] = %0d",data[0][1]);
 $display("data[1][0] = %0d",data[1][0]);
 $display("data[1][1] = %0d",data[1][1]);
 $display("data[2][0] = %0d",data[2][0]);
 $display("data[2][1] = %0d",data[2][1]);
 $display("data[3][0] = %0d",data[3][0]);
 $display("data[3][1] = %0d",data[3][1]);
 end
endmodule

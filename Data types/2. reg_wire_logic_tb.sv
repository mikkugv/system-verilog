module tb;
 logic clk,rst,d;
 logic q;
  reg_example uut(
    .clk(clk),
    .rst(rst),
    .d(d),
    .q(q)
  );
  always #5 clk = ~clk;
  initial begin    
    $monitor("T=%0t, clk=%b, rst=%b, d=%b, q=%b",$time,clk,rst,d,q);
    clk = 0;
    rst = 1;
    d=0;
    #10 rst=0;
    #10 d=1;
    #10 d=0;
    #10 d=1;
    #20 $finish;
  end
endmodule

module two_state_example;
bit a;
byte b;
shortint c;
int d;
longint e;

initial begin
  a=1;
  b=-10;
  c=3000;
  d=-50000;
  e=1938291754763;
 //value
  $display("bit a = %0d",a);
  $display("byte b = %0d",b);
  $display("shortint c = %0d",c);
  $display("int d = %0d",d);
  $display("longint e = %0d",e);
  //size
  $display("size of bit = %0dbits",$bits(a));
  $display("size of byte = %0dbits",$bits(b));
  $display("size of shortint = %0dbits",$bits(c));
  $display("size of int = %0dbits",$bits(d));
  $display("size of longint=%0d bit",$bits(e));
end 
endmodule

module data_type_time;
 time time_data;
 initial begin
  $display("\n//time is 64-bit unsigned integer");
  $display("\nBefore initialization initial value of time = %0t",time_data);
  #5;
  time_data = $time;
  $display("\nAfter initialization value of time = %0t\n", time_data);
 end
endmodule

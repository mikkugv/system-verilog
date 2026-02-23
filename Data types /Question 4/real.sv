module real_example;
real real_data;
real scientific_value;
initial begin
real_data=2.34;
scientific_value=2e34;
$display("real data(real_data)=%f",real_data);
$display("real data(scientific_value)=%f",scientific_value);
real_data= real_data+2.5;
$display("after addition=%f",real_data);
end
endmodule

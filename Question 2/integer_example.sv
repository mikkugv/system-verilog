module integer_example;
    integer i;
    initial begin
        for (i = 0; i < 5; i = i + 1)
        $display("i = %0d", i);
    end
endmodule

module tb;
    fa_if vif();
    full_adder dut(
        .a(vif.a),
        .b(vif.b),
        .cin(vif.cin),
        .sum(vif.sum),
        .cout(vif.cout)
    );
    test t;
    initial
    begin
        t = new(vif);
        t.run();
    end
    initial
    begin
        #200;
        $finish;
    end
endmodule

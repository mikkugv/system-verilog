class test;
    environment env;
    function new(virtual fa_if vif);
        env = new(vif);
    endfunction
    task run();
        $display("Running Test");
        env.run();
    endtask
endclass

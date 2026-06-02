class agent;
    generator gen;
    driver drv;
    monitor mon;
    function new(
        virtual fa_if vif,
        mailbox gen2drv,
        mailbox mon2scb
    );
        gen = new(gen2drv);
        drv = new(vif,gen2drv);
        mon = new(vif,mon2scb);
    endfunction
endclass

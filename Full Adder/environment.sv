class environment;
    agent agt;
    scoreboard scb;
    mailbox gen2drv;
    mailbox mon2scb;
    function new(virtual fa_if vif);
        gen2drv = new();
        mon2scb = new();
        agt = new(vif,gen2drv,mon2scb);
        scb = new(mon2scb);
    endfunction
    task run();
        fork
            agt.gen.run();
            agt.drv.run();
            agt.mon.run();
            scb.run();
        join_none
    endtask
endclass

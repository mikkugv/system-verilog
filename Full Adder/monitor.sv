class monitor;
    virtual fa_if vif;
    mailbox mon2scb;
    function new(
        virtual fa_if vif,
        mailbox mon2scb
    );
        this.vif = vif;
        this.mon2scb = mon2scb;
    endfunction
    task run();
        transaction tr;
        forever
        begin
            #10;
            tr = new();
            tr.a    = vif.a;
            tr.b    = vif.b;
            tr.cin  = vif.cin;
            tr.sum  = vif.sum;
            tr.cout = vif.cout;
            mon2scb.put(tr);
        end
    endtask
endclass

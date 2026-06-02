class driver;
    virtual fa_if vif;
    mailbox gen2drv;
    function new(
        virtual fa_if vif,
        mailbox gen2drv
    );
        this.vif = vif;
        this.gen2drv = gen2drv;
    endfunction
   task run();
   transaction tr;
   forever
   begin
      gen2drv.get(tr);
      vif.a   = tr.a;
      vif.b   = tr.b;
      vif.cin = tr.cin;
      #10;
   end
endtask
endclass

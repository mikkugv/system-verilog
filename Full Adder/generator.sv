class generator;
    mailbox gen2drv;
    function new(mailbox gen2drv);
        this.gen2drv = gen2drv;
    endfunction
  task run();
   transaction tr;
   repeat(10)
   begin
      tr = new();
      assert(tr.randomize());
      gen2drv.put(tr);
      $display("[GEN] a=%0b b=%0b cin=%0b",tr.a,tr.b,tr.cin);
      #10;  
   end
endtask
endclass



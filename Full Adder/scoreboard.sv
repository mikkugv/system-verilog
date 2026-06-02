class scoreboard;
    mailbox mon2scb;
    function new(mailbox mon2scb);
        this.mon2scb = mon2scb;
    endfunction
    task run();
        transaction tr;
        bit exp_sum;
        bit exp_cout;
        forever
        begin
            mon2scb.get(tr);
            exp_sum  = tr.a ^ tr.b ^ tr.cin;
            exp_cout = (tr.a & tr.b) |(tr.b & tr.cin) |(tr.a & tr.cin);
            if((tr.sum == exp_sum) &&(tr.cout == exp_cout))
                $display("[PASS] sum=%0b cout=%0b",tr.sum,tr.cout);
            else
                $display("[FAIL]");
        end
    endtask
endclass

module unbounded_queue;
int q[$];   
initial begin
q.push_back(10);
q.push_back(20);
q.push_back(30);
$display("Queue = %p", q);
q.pop_front();   
$display("Queue after pop = %p", q);
end
endmodule


/*output
[2026-03-16 12:58:22 UTC] xrun -Q -unbuffered '-timescale' '1ns/1ns' '-sysv' '-access' '+rw' design.sv testbench.sv  
TOOL:	xrun	25.03-s001: Started on Mar 16, 2026 at 08:58:22 EDT
xrun: 25.03-s001: (c) Copyright 1995-2025 Cadence Design Systems, Inc.
    q.pop_front();   // removes first element
              |
xmvlog: *W,FUNTSK (testbench.sv,12|14): function called as a task without void'().
	Top level design units:
		unbounded_queue
Loading snapshot worklib.unbounded_queue:sv .................... Done
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
Queue = '{10, 20, 30}
Queue after pop = '{20, 30}
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	25.03-s001: Exiting on Mar 16, 2026 at 08:58:23 EDT  (total: 00:00:01)
Done*/

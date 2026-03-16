module bounded_queue;
int q[$:3];  
initial begin
q.push_back(5);
q.push_back(10);
q.push_back(15);
q.push_back(20);
$display("Queue = %p", q);
end
endmodule


/*output
[2026-03-16 12:35:44 UTC] xrun -Q -unbuffered '-timescale' '1ns/1ns' '-sysv' '-access' '+rw' design.sv testbench.sv  
TOOL:	xrun	25.03-s001: Started on Mar 16, 2026 at 08:35:45 EDT
xrun: 25.03-s001: (c) Copyright 1995-2025 Cadence Design Systems, Inc.
	Top level design units:
		bounded_queue
Loading snapshot worklib.bounded_queue:sv .................... Done
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
Queue = '{5, 10, 15, 20}
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	25.03-s001: Exiting on Mar 16, 2026 at 08:35:46 EDT  (total: 00:00:01)
Done*/

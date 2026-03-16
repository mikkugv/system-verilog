module dynamic_array_example;
int arr[];   
initial begin
arr = new[5];  
arr[0] = 10;
arr[1] = 20;
arr[2] = 30;
arr[3] = 40;
arr[4] = 50;
$display("arr[0] = %0d", arr[0]);
$display("arr[1] = %0d", arr[1]);
$display("arr[2] = %0d", arr[2]);
$display("arr[3] = %0d", arr[3]);
$display("arr[4] = %0d", arr[4]);
end
endmodule

/*output
[2026-03-16 11:43:41 UTC] xrun -Q -unbuffered '-timescale' '1ns/1ns' '-sysv' '-access' '+rw' design.sv testbench.sv  
TOOL:	xrun	25.03-s001: Started on Mar 16, 2026 at 07:43:42 EDT
xrun: 25.03-s001: (c) Copyright 1995-2025 Cadence Design Systems, Inc.
	Top level design units:
		dynamic_array_example
Loading snapshot worklib.dynamic_array_example:sv .................... Done
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
arr[0] = 10
arr[1] = 20
arr[2] = 30
arr[3] = 40
arr[4] = 50
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	25.03-s001: Exiting on Mar 16, 2026 at 07:43:43 EDT  (total: 00:00:01)
Done */

module associative_array;
int arr[string];   
initial begin
arr["A"] = 10;
arr["B"] = 20;
arr["C"] = 30;
$display("Value of A = %0d", arr["A"]);
$display("Value of B = %0d", arr["B"]);
$display("Value of C = %0d", arr["C"]);
end
endmodule

/*output
[2026-03-16 12:14:26 UTC] xrun -Q -unbuffered '-timescale' '1ns/1ns' '-sysv' '-access' '+rw' design.sv testbench.sv  
TOOL:	xrun	25.03-s001: Started on Mar 16, 2026 at 08:14:26 EDT
xrun: 25.03-s001: (c) Copyright 1995-2025 Cadence Design Systems, Inc.
	Top level design units:
		associative_array
Loading snapshot worklib.associative_array:sv .................... Done
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
Value of A = 10
Value of B = 20
Value of C = 30
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	25.03-s001: Exiting on Mar 16, 2026 at 08:14:28 EDT  (total: 00:00:02)
Done*/

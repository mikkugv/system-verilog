module unpacked_array_example;
bit [7:0] data [3:0];  
initial begin
data[0] = 8'd10;
data[1] = 8'd20;
data[2] = 8'd30;
data[3] = 8'd40;
$display("data[0] = %0d", data[0]);
$display("data[1] = %0d", data[1]);
$display("data[2] = %0d", data[2]);
$display("data[3] = %0d", data[3]);
end
endmodule

/*output
[2026-03-16 10:26:36 UTC] xrun -Q -unbuffered '-timescale' '1ns/1ns' '-sysv' '-access' '+rw' design.sv testbench.sv  
TOOL:	xrun	25.03-s001: Started on Mar 16, 2026 at 06:26:37 EDT
xrun: 25.03-s001: (c) Copyright 1995-2025 Cadence Design Systems, Inc.
	Top level design units:
		unpacked_array_example
Loading snapshot worklib.unpacked_array_example:sv .................... Done
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
data[0] = 10
data[1] = 20
data[2] = 30
data[3] = 40
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	25.03-s001: Exiting on Mar 16, 2026 at 06:26:38 EDT  (total: 00:00:01)
Done  */

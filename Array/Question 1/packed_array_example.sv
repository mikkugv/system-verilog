module packed_array_example;
bit   [3:0]  abc = 4'b0110;
logic [15:0] pqr = 16'h10FE;
reg   [7:0]  xyz = 8'd16;
initial begin
$display("Value of abc = %b", abc);
$display("Value of pqr = %h", pqr);
$display("Value of xyz = %d", xyz);
end
endmodule

/*output
[2026-03-16 10:06:17 UTC] xrun -Q -unbuffered '-timescale' '1ns/1ns' '-sysv' '-access' '+rw' design.sv testbench.sv  
TOOL:	xrun	25.03-s001: Started on Mar 16, 2026 at 06:06:17 EDT
xrun: 25.03-s001: (c) Copyright 1995-2025 Cadence Design Systems, Inc.
	Top level design units:
		packed_array_example
Loading snapshot worklib.packed_array_example:sv .................... Done
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
Value of abc = 0110
Value of pqr = 10fe
Value of xyz =  16
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	25.03-s001: Exiting on Mar 16, 2026 at 06:06:19 EDT  (total: 00:00:02)
Done */

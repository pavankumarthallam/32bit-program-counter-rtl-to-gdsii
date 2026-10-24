# Verification

- `testbenches/program_counter_tb.v`: original self-checking testbench, unmodified.
- `simulation_results/iverilog_run.log`: output of a real run with Icarus Verilog 12.0.

Command (also in `scripts/run_sim.sh`):
```bash
iverilog -g2005 -Wall -o pc.vvp rtl/*.v verification/testbenches/program_counter_tb.v && vvp pc.vvp
```
Result: compiled with no warnings; all 15 checks passed.

Covered: reset value, sequential +4, stall (2 cycles), branch, jump, enable low (2 cycles), and branch+jump together (jump wins).
Not covered: reset asserted mid-run, reset together with enable low, stall together with branch or jump, a non-default `RESET_VECTOR` / `PC_INCREMENT`, PC wrap-around. There is no gate-level or post-layout simulation.

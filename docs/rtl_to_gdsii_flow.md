# RTL-to-GDSII flow

Stages run (per the report): RTL → functional simulation → logic synthesis (Yosys) → floorplan → placement (global and detailed, with resizing) → clock tree synthesis → routing (global and detailed) → parasitic extraction (OpenRCX) → static timing analysis (OpenSTA) → final GDSII (viewed in KLayout, checked in Magic).

| Stage | Status per source | Figure |
|---|---|---|
| Simulation | testbench passes (iverilog), waveform available | images/verification/rtl_verification.png |
| Synthesis | 331 cells, check passed | images/architecture/rtl_schematic.png |
| Floorplan | WNS 0.00 ns | images/floorplan/floorplan.png |
| Placement | WNS 0.00 ns after resizing | images/placement/placement_after_resizing.png |
| CTS | WNS 0.00 ns | images/clock_tree_synthesis/ |
| Routing | 0 setup/hold violations | images/routing/ |
| Final GDSII | DRC passed | images/final_layout/ |

Antenna checking and tapcell/PDN steps are part of the standard ORFS flow but are not documented in the source files, so they are not claimed here.

## Running it
Environment: Ubuntu 24.04, ORFS under `~/OpenROAD-flow-scripts/` (adapt the path to your install), SKY130HD platform.

```bash
cd ~/OpenROAD-flow-scripts/flow
make DESIGN_CONFIG=./designs/sky130hd/<design_name>/config.mk
```
Replace `<design_name>` with your design folder holding the RTL, `config.mk` and SDC. Results land under `flow/results`, `flow/reports` and `flow/logs`. These commands are the standard ORFS pattern and have not been re-run for this repository.

File roles: `.v` RTL/netlist, `.sdc` timing constraints, `.odb` OpenROAD database, `.def` placement/routing exchange, `.spef` extracted parasitics, `.gds` final layout.

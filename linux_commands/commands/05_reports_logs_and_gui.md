# 5. Reports, logs, and OpenROAD GUI

## Reports and logs

The project context records this report inspection command for the GCD example:

```bash
cat reports/sky130hd/gcd/base/6_finish.rpt
```

Useful commands for discovering and reading reports:

```bash
find reports/sky130hd/gcd/base -maxdepth 1 -type f
find logs/sky130hd/gcd/base -maxdepth 2 -type f
less reports/sky130hd/gcd/base/6_finish.rpt
```

Remember:

- `results/` contains design artifacts such as ODB, DEF, netlists, SPEF, and GDSII.
- `reports/` contains summarized analysis and metrics.
- `logs/` contains detailed tool execution records.

## OpenROAD GUI

A GUI command documented in the user's setup context is:

```bash
../tools/OpenROAD/build/bin/openroad -gui -db results/sky130hd/gcd/base/3_place.odb
```

Run it from the `flow/` directory and confirm that this executable and database path exist. For example:

```bash
cd ~/OpenROAD-flow-scripts/flow
ls results/sky130hd/gcd/base
```

If the executable is elsewhere in your ORFS checkout, use its actual path. The GUI command opens a specific database; substitute a database only after confirming it exists.

## Program Counter stage examples

The following commands were suggested during earlier project discussions, but the exact stage target and ODB filename depend on the local ORFS version:

```bash
make DESIGN_CONFIG=./designs/sky130hd/program_counter/config.mk cts
make DESIGN_CONFIG=./designs/sky130hd/program_counter/config.mk grt
make DESIGN_CONFIG=./designs/sky130hd/program_counter/config.mk route
```

Example GUI pattern:

```bash
openroad -gui -db results/sky130hd/program_counter/base/4_1_cts.odb
```

Check the actual files before launching. Do not treat these as proof that each stage was successfully completed.

## GUI troubleshooting note

The project history mentions a Wayland Qt platform-plugin error and GUI rendering issues. If they occur, record the exact error and environment first. Avoid changing system libraries or deleting tool files based on a generic fix.

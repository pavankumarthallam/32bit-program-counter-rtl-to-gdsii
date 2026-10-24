# 3. ORFS GCD reference flow

## Known setup state

The GCD example has successfully run in the user's ORFS setup using the `sky130hd` platform.

## Main directories

From the ORFS checkout:

```text
flow/designs/src/gcd/
flow/designs/sky130hd/gcd/
flow/results/sky130hd/gcd/base/
flow/reports/sky130hd/gcd/base/
flow/logs/sky130hd/gcd/base/
flow/platforms/sky130hd/
```

Typical files include:

```text
flow/designs/src/gcd/gcd.v
flow/designs/sky130hd/gcd/config.mk
flow/designs/sky130hd/gcd/constraint.sdc
```

Check your local checkout for the exact file names.

## Run the GCD flow

The project history records this command pattern:

```bash
cd ~/OpenROAD-flow-scripts/flow
make DESIGN_CONFIG=./designs/sky130hd/gcd/config.mk
```

This runs the configured flow; it may regenerate results and consume CPU, memory, and disk space.

## Run or inspect a stage

ORFS Make targets can vary by version and design configuration. Before using a stage-specific target, inspect the local documentation or run:

```bash
make help
```

Do not assume a target name is supported in every ORFS version.

## Typical output locations

```text
results/sky130hd/gcd/base/   # databases, netlists, GDSII and other results
reports/sky130hd/gcd/base/   # human-readable metrics and reports
logs/sky130hd/gcd/base/      # execution logs
objects/                     # intermediate files
```

The following stage names have appeared in the user's flow documentation; exact filenames can differ by ORFS version/configuration:

```text
1_synth.odb
2_floorplan.odb
3_place.odb
4_cts.odb
5_route.odb
6_final.odb
6_final.gds
6_final.spef
```

Use `find results/sky130hd/gcd -type f` to discover the actual outputs in your run.

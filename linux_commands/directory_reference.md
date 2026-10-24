# ORFS directory reference

## ORFS root

```text
~/OpenROAD-flow-scripts/
```

Contains ORFS scripts, tools, flow files, docs, and supporting resources.

## Main working directory

```text
~/OpenROAD-flow-scripts/flow/
```

| Directory | Purpose |
|---|---|
| `designs/src/` | RTL source files |
| `designs/sky130hd/` | SKY130HD-specific design configuration and constraints |
| `results/` | Generated databases, netlists, parasitics, GDSII, and other outputs |
| `reports/` | Timing, area, power, routing, and other summaries |
| `logs/` | Tool logs |
| `objects/` | Intermediate build artifacts |
| `scripts/` | Flow scripts |
| `platforms/sky130hd/` | Platform/technology configuration |
| `Makefile` | Flow entry points and targets |

## GCD reference paths

```text
designs/src/gcd/
designs/sky130hd/gcd/
results/sky130hd/gcd/base/
reports/sky130hd/gcd/base/
logs/sky130hd/gcd/base/
```

## Program Counter paths

The intended custom-design pattern is:

```text
designs/src/program_counter/
designs/sky130hd/program_counter/
results/sky130hd/program_counter/base/
reports/sky130hd/program_counter/base/
logs/sky130hd/program_counter/base/
```

Actual paths depend on the design name in `config.mk`.

## File extensions

| Extension | Typical meaning |
|---|---|
| `.v` | Verilog RTL or gate-level netlist |
| `.sdc` | Timing constraints |
| `.mk` | Make configuration |
| `.odb` | OpenDB physical-design database |
| `.def` | Design Exchange Format physical layout |
| `.spef` | Extracted parasitic information |
| `.gds` | GDSII layout |
| `.rpt` | Human-readable report |
| `.log` | Tool execution log |

Always confirm each file's role from its generating stage and contents.

# 4. Program Counter RTL-to-GDSII workflow

## Intended ORFS structure

The custom design's configuration and RTL are normally separated:

```text
flow/
├── designs/
│   ├── src/
│   │   └── program_counter/
│   │       └── [original Version 2 RTL modules]
│   └── sky130hd/
│       └── program_counter/
│           ├── config.mk
│           └── constraint.sdc
├── results/sky130hd/program_counter/base/
├── reports/sky130hd/program_counter/base/
└── logs/sky130hd/program_counter/base/
```

This is a target structure/reference. Confirm that the actual design name, top module, filenames, and configuration variables match your source files before running ORFS.

## Useful directory setup commands

These commands were suggested in project conversations as setup examples:

```bash
cd ~/OpenROAD-flow-scripts/flow
mkdir -p designs/src/program_counter
mkdir -p designs/sky130hd/program_counter
```

Copy files only after checking the actual source paths. Example syntax:

```bash
cp /path/to/your/rtl/*.v designs/src/program_counter/
cp /path/to/your/config.mk designs/sky130hd/program_counter/
cp /path/to/your/constraint.sdc designs/sky130hd/program_counter/
```

The `/path/to/your/...` paths are placeholders and must be replaced. These commands are not a claim that the files currently exist at those locations.

## Run the custom flow

Once the configuration is correct:

```bash
cd ~/OpenROAD-flow-scripts/flow
make DESIGN_CONFIG=./designs/sky130hd/program_counter/config.mk
```

This is the standard command pattern documented for the custom design. Do not run until `config.mk`, SDC, RTL file paths, top-module name, and platform settings have been checked.

## Inspect results

```bash
find results/sky130hd/program_counter -type f
find reports/sky130hd/program_counter -type f
find logs/sky130hd/program_counter -type f
```

Version policy for the GitHub project:
- Version 2 is the main design.
- Version 1 is the baseline.
- Preserve original RTL unchanged.
- Keep per-version configs, constraints, reports, and results clearly distinguished.
- Only compare PPA metrics when the flow stages and constraints are comparable.

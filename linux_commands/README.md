# Linux Commands and ORFS Directory Reference

A practical command reference for the IIT Roorkee 32-bit Program Counter RTL-to-GDSII project.

**Environment documented from project context**
- OS: Ubuntu 24.04 LTS
- Flow: OpenROAD Flow Scripts (ORFS)
- Platform: `sky130hd` / SkyWater SKY130HD
- Main ORFS root: `~/OpenROAD-flow-scripts/`
- Main working directory: `~/OpenROAD-flow-scripts/flow/`
- Confirmed milestone: ORFS installed and the GCD reference design successfully run
- Custom design: 32-bit Program Counter, Version 2 as main design and Version 1 as baseline

## Important accuracy note

Commands are grouped as:
1. **Commands recorded in the project history** — commands explicitly present in the available setup/project context.
2. **Useful commands for inspection or reproduction** — standard commands provided as a reference; do not describe them in a report as commands personally executed unless you actually run them.

Some project conversations contain suggested commands, not proof that every command was executed. Check paths and config names against your local ORFS checkout before running a command.

## Contents

- [`commands/01_setup_and_environment.md`](commands/01_setup_and_environment.md)
- [`commands/02_linux_navigation_and_files.md`](commands/02_linux_navigation_and_files.md)
- [`commands/03_orfs_gcd_reference_flow.md`](commands/03_orfs_gcd_reference_flow.md)
- [`commands/04_program_counter_flow.md`](commands/04_program_counter_flow.md)
- [`commands/05_reports_logs_and_gui.md`](commands/05_reports_logs_and_gui.md)
- [`directory_reference.md`](directory_reference.md)
- [`github_commit_checklist.md`](github_commit_checklist.md)

## Quick start

```bash
cd ~/OpenROAD-flow-scripts/flow
pwd
ls
make DESIGN_CONFIG=./designs/sky130hd/gcd/config.mk
```

The final command is the ORFS GCD flow pattern documented in the project context. Run it only if you intend to rerun the reference design.

## Project-specific reminder

Do not place the complete ORFS installation, PDK, or large generated build directories inside this GitHub project. Keep the repository focused on the Program Counter RTL, its own configuration/constraints, relevant reports, selected figures, and reproducibility documentation.

# 2. Linux navigation and file-management commands

These are standard Linux commands useful for navigating and documenting the project. This section is a reference list; it does not assert that every command was previously executed.

## Navigate and inspect

```bash
pwd                         # Show current directory
ls                          # List files
ls -la                      # Include hidden files and details
ls -R designs               # Recursively list design files
find designs -maxdepth 4 -type f
tree designs                # Requires tree to be installed
```

If `tree` is unavailable, use `find` or `ls -R`.

## Read configuration and reports

```bash
cat designs/sky130hd/gcd/config.mk
cat designs/sky130hd/gcd/constraint.sdc
cat reports/sky130hd/gcd/base/6_finish.rpt
less reports/sky130hd/gcd/base/6_finish.rpt
```

The `cat` command for the GCD final report is specifically present in the project context. The other commands are common inspection examples.

## Create directories

```bash
mkdir -p designs/src/program_counter
mkdir -p designs/sky130hd/program_counter
mkdir -p ~/projects/program_counter
```

`mkdir -p` creates missing parent directories and does not complain if the directory already exists.

## Copy files

```bash
cp source_file destination_file
cp -r source_directory destination_directory
```

Before copying into ORFS, verify the source path and destination. Preserve authoritative RTL files unchanged if the project requires source preservation.

## Search and inspect file sizes

```bash
find . -type f -name '*.v'
find . -type f -name '*.sdc'
du -sh .
du -ah results/sky130hd/program_counter/base | sort -h | tail
```

## Safe file-handling habits

- Use `pwd` before a large copy or deletion.
- Use `ls` to verify source and destination paths.
- Avoid `rm -rf` unless you have verified the exact target.
- Do not copy a complete ORFS checkout or PDK into the GitHub project.
- Keep generated files, reports, and source RTL clearly separated.

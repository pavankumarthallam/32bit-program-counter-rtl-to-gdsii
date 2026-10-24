# 1. Setup and environment commands

## Commands recorded in project context

These commands were recorded during the ORFS setup conversations:

```bash
sudo ./etc/DependencyInstaller.sh -all
./build_openroad.sh --local --threads 4
openroad -version
```

Run the dependency installer from the ORFS root and review its actions before using `sudo`. A build command may take significant time and resources.

The setup context also mentioned:

```bash
cmake --version
./build_openroad.sh --local
```

These are recorded as setup commands discussed in the conversation; verify whether you ran each one on your machine before claiming that in a report.

## Confirm the installation

Useful inspection commands:

```bash
cd ~/OpenROAD-flow-scripts
pwd
ls
ls tools
ls tools/install
```

Check the tool binaries that exist in your checkout:

```bash
test -x ./tools/install/yosys/bin/yosys && ./tools/install/yosys/bin/yosys -V
test -x ./tools/OpenROAD/build/bin/openroad && ./tools/OpenROAD/build/bin/openroad -version
```

ORFS build layouts can differ between versions. If an executable is not at the example path, locate it instead of assuming the path is wrong.

## If a build appears to be running

A standard process monitor is:

```bash
top
```

Press `q` to quit `top`. This was suggested during setup troubleshooting; use it to inspect CPU and memory use, not to terminate processes blindly.

## Environment notes

- The documented OS is Ubuntu 24.04 LTS.
- ORFS root has been referenced as `~/OpenROAD-flow-scripts/`; the home-relative path avoids hardcoding a username.
- The GCD example has been successfully run in this environment.

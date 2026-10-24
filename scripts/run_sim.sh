#!/bin/sh
# Compile and run the original testbench with Icarus Verilog (run from the repo root).
set -e
iverilog -g2005 -Wall -o /tmp/pc.vvp rtl/*.v verification/testbenches/program_counter_tb.v
vvp /tmp/pc.vvp

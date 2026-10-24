# PPA results

Source: internship report (Chapter 4) and presentation slides 13-22. No raw ORFS reports were available.

## Synthesis
| Metric | Value |
|---|---|
| Total standard cells | 331 |
| Total cell area | 2313.47 µm² |
| Sequential area | 640.61 µm² (27.69%) |
| Combinational area | 1672.86 µm² (72.31%) |
| Wires / wire bits | 309 / 402 |
| Ports / port bits | 9 / 102 |
| Structural check | passed, 0 problems |

## Floorplan geometry
Core area 7369.568 µm²; die area 8066.734 µm².

## Per-stage timing and power
| Stage | WNS | TNS | Worst slack | Min period | Fmax | Power |
|---|---|---|---|---|---|---|
| Floorplan | 0.00 ns | 0.00 ns | 8.08 ns | 1.92 ns | 521.89 MHz | 183 µW |
| Placement | 0.00 ns | 0.00 ns | 7.34 ns | 2.66 ns | 376.20 MHz | 238 µW |
| CTS | 0.00 ns | 0.00 ns | 7.54 ns | 2.46 ns | 405.85 MHz | 339 µW |
| Routing | 0.00 ns | 0.00 ns | 7.36 ns | 2.64 ns | 378.47 MHz | 355 µW |
| Final GDSII | 0.00 ns | 0.00 ns | n/a | n/a | 400.40 MHz | 336 µW |

Routing: wire length 8392 µm, 2820 vias, critical-path delay 2.76 ns. Final: critical-path delay 2.57 ns, 0 setup / 0 hold violations, DRC passed.

## How to read these numbers
- Worst slack plus minimum period equals 10.00 ns at floorplan, placement, CTS and routing, so the clock constraint is probably 10 ns. This is inferred; check the SDC.
- Fmax here is the tool-reported figure (1 / minimum period). It is relative to the constraint methodology and is not a guaranteed operating frequency.
- Power rises from 183 µW to 355 µW through CTS and routing (clock buffers, wiring), then settles at 336 µW at the end. These are estimates, not silicon measurements.
- The routing slide lists a 2.76 ns critical path and a 2.64 ns minimum period together; the difference is unexplained without the raw report.

## Not available
Internal / switching / leakage power split for this design, placed and CTS cell counts, utilization after floorplan, clock skew, congestion numbers, antenna and parasitic-extraction logs.

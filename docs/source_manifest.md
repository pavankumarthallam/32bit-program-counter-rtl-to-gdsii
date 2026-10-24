# Source manifest

Sources: `Program_Counter_Internship_Report.docx` (report) and `prgrm_project.pptx` (slides). Images were extracted at original resolution from the slides.

| Image | Slide | Shows | Status |
|---|---|---|---|
| images/architecture/rtl_schematic.png | 14 | RTL schematic after elaboration | extracted |
| images/verification/rtl_verification.png | 15 | simulation waveform | extracted |
| images/floorplan/floorplan.png | 16 | floorplan: die boundary, core, rows | extracted |
| images/placement/placement_after_resizing.png | 17 | detailed placement after legalization/optimization | extracted |
| images/clock_tree_synthesis/cts_layout.png | 18 | layout after CTS | extracted |
| images/clock_tree_synthesis/cts_clock_view_2.png | 18 | second CTS clock view | extracted |
| images/clock_tree_synthesis/cts_clock_tree_hierarchy.png | 19 | synthesized clock tree hierarchy | extracted |
| images/routing/congestion_map.png | 20 | routing congestion map | extracted |
| images/routing/ir_drop.png | 20 | IR drop on the power network | extracted |
| images/routing/routed_layout.png | 20 | routed layout | extracted |
| images/routing/critical_path.png | 20 | critical timing path after routing | extracted |
| images/final_layout/gds_view_1.png | 22 | final layout | extracted |
| images/final_layout/gds_klayout.png | 22 | GDSII in KLayout | extracted |

Report figures 4.14 (placement before resizing) and others exist in the report but were not extracted yet.

Numbers: report sections 2.5 and 4.3 and slides 16-21. Not machine-verified.

## RTL and testbench
Supplied by the author as `program_counter_top.v`, `pc_control.v`, `next_pc_logic.v`, `program_counter_reg.v`, `program_counter_tb.v`. Copied unchanged (byte-compared against the uploads; SHA-256 in `rtl_checksums.sha256`). The waveform image's behaviour matches the testbench sequence and the RTL priority.

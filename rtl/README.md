# RTL

Original Verilog, copied byte-for-byte (CRLF line endings preserved). SHA-256 values are in [`../docs/rtl_checksums.sha256`](../docs/rtl_checksums.sha256); check with `cd rtl && sha256sum -c ../docs/rtl_checksums.sha256`.

| File | Module |
|---|---|
| program_counter_top.v | top level |
| pc_control.v | priority decoder |
| next_pc_logic.v | incrementer and next-PC mux |
| program_counter_reg.v | PC register |

All four files are required. See [`../docs/architecture.md`](../docs/architecture.md) for interface and priority.

`timescale 1ns / 1ps
//==============================================================================
// Project : Program Counter Version 2.0
// File    : program_counter_top.v
// Author  : Pavan Kumar
//
// Description:
// ------------
// Top-level integration of the Program Counter Version 2.
//
// This module instantiates:
//
//   • PC Control Unit
//   • Next-PC Logic
//   • Program Counter Register
//
// External interface is intentionally identical to Version 1,
// allowing direct functional verification and PPA comparison.
//
//==============================================================================

module program_counter_top #(
    parameter integer XLEN = 32,
    parameter [XLEN-1:0] RESET_VECTOR = 32'h0000_0000,
    parameter [XLEN-1:0] PC_INCREMENT = 32'd4
)
(
    //--------------------------------------------------------------------------
    // Clock and Reset
    //--------------------------------------------------------------------------

    input  wire                 clk,
    input  wire                 reset,

    //--------------------------------------------------------------------------
    // Control Inputs
    //--------------------------------------------------------------------------

    input  wire                 enable,
    input  wire                 stall,
    input  wire                 branch_taken,
    input  wire                 jump_taken,

    //--------------------------------------------------------------------------
    // Target Addresses
    //--------------------------------------------------------------------------

    input  wire [XLEN-1:0]      branch_target,
    input  wire [XLEN-1:0]      jump_target,

    //--------------------------------------------------------------------------
    // Program Counter Output
    //--------------------------------------------------------------------------

    output wire [XLEN-1:0]      pc

);

    //==========================================================================
    // Internal Control Signals
    //==========================================================================

    wire seq_sel_w;
    wire stall_sel_w;
    wire branch_sel_w;
    wire jump_sel_w;

    //==========================================================================
    // Internal Datapath Signals
    //==========================================================================

    wire [XLEN-1:0] next_pc_w;

    //==========================================================================
    // PC Control Unit
    //==========================================================================

    pc_control u_pc_control
    (
        .jump_taken_i   (jump_taken),
        .branch_taken_i (branch_taken),
        .stall_i        (stall),

        .seq_sel_o      (seq_sel_w),
        .stall_sel_o    (stall_sel_w),
        .branch_sel_o   (branch_sel_w),
        .jump_sel_o     (jump_sel_w)
    );

    //==========================================================================
    // Next-PC Logic
    //==========================================================================

    next_pc_logic
    #(
        .XLEN          (XLEN),
        .PC_INCREMENT  (PC_INCREMENT)
    )
    u_next_pc_logic
    (
        .pc_i              (pc),

        .branch_target_i   (branch_target),
        .jump_target_i     (jump_target),

        .seq_sel_i         (seq_sel_w),
        .stall_sel_i       (stall_sel_w),
        .branch_sel_i      (branch_sel_w),
        .jump_sel_i        (jump_sel_w),

        .next_pc_o         (next_pc_w)
    );

    //==========================================================================
    // Program Counter Register
    //==========================================================================

    program_counter_reg
    #(
        .XLEN          (XLEN),
        .RESET_VECTOR  (RESET_VECTOR)
    )
    u_program_counter_reg
    (
        .clk        (clk),
        .reset      (reset),
        .enable     (enable),

        .next_pc_i  (next_pc_w),

        .pc_o       (pc)
    );
endmodule
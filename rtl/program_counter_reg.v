`timescale 1ns / 1ps
//==============================================================================
// Project : Program Counter Version 2.0
// File    : program_counter_reg.v
// Author  : Pavan Kumar
//
// Description:
// ------------
// Program Counter Register
//
// This module implements the sequential storage element of the Program
// Counter subsystem.
//
// Responsibilities:
//   • Store the Program Counter
//   • Synchronous active-high reset
//   • Register enable
//
// This module contains NO combinational logic.
//
//==============================================================================

module program_counter_reg #(
    parameter integer XLEN = 32,
    parameter [XLEN-1:0] RESET_VECTOR = 32'h0000_0000
)
(
    //----------------------------------------------------------------------
    // Clock and Reset
    //----------------------------------------------------------------------

    input  wire                 clk,
    input  wire                 reset,

    //----------------------------------------------------------------------
    // Register Enable
    //----------------------------------------------------------------------

    input  wire                 enable,

    //----------------------------------------------------------------------
    // Next PC Input
    //----------------------------------------------------------------------

    input  wire [XLEN-1:0]      next_pc_i,

    //----------------------------------------------------------------------
    // Current PC Output
    //----------------------------------------------------------------------

    output reg  [XLEN-1:0]      pc_o
);

    //----------------------------------------------------------------------
    // Program Counter Register
    //----------------------------------------------------------------------

    always @(posedge clk) begin

        if (reset)
            pc_o <= RESET_VECTOR;

        else if (enable)
            pc_o <= next_pc_i;

        // When enable = 0, the register automatically retains its value.

    end

endmodule
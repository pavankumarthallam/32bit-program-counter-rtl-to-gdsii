`timescale 1ns / 1ps
//==============================================================================
// Project : Program Counter Version 2.0
// File    : pc_control.v
// Author  : Pavan Kumar
//
// Description:
// ------------
// Program Counter Control Unit
//
// This module resolves the priority among the incoming control signals and
// generates mutually exclusive (one-hot) control signals for the Next-PC
// datapath.
//
// Priority (Highest -> Lowest)
// ----------------------------
// 1. Jump
// 2. Branch
// 3. Stall
// 4. Sequential (PC + PC_INCREMENT)
//
//==============================================================================

module pc_control
(
    //----------------------------------------------------------------------
    // Control Inputs
    //----------------------------------------------------------------------

    input  wire jump_taken_i,
    input  wire branch_taken_i,
    input  wire stall_i,

    //----------------------------------------------------------------------
    // One-Hot Control Outputs
    //----------------------------------------------------------------------

    output reg  seq_sel_o,
    output reg  stall_sel_o,
    output reg  branch_sel_o,
    output reg  jump_sel_o
);

    //----------------------------------------------------------------------
    // Priority Decoder
    //----------------------------------------------------------------------

    always @(*) begin

        // Default outputs
        seq_sel_o    = 1'b0;
        stall_sel_o  = 1'b0;
        branch_sel_o = 1'b0;
        jump_sel_o   = 1'b0;

        //--------------------------------------------------------------
        // Priority Logic
        //--------------------------------------------------------------

        if (jump_taken_i) begin

            jump_sel_o = 1'b1;

        end
        else if (branch_taken_i) begin

            branch_sel_o = 1'b1;

        end
        else if (stall_i) begin

            stall_sel_o = 1'b1;

        end
        else begin

            seq_sel_o = 1'b1;

        end

    end

endmodule
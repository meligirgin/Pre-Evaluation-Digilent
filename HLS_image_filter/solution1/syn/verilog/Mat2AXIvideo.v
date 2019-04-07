// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Mat2AXIvideo (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        img_data_stream_V_dout,
        img_data_stream_V_empty_n,
        img_data_stream_V_read,
        OUTPUT_STREAM_TDATA,
        OUTPUT_STREAM_TVALID,
        OUTPUT_STREAM_TREADY,
        OUTPUT_STREAM_TKEEP,
        OUTPUT_STREAM_TSTRB,
        OUTPUT_STREAM_TUSER,
        OUTPUT_STREAM_TLAST,
        OUTPUT_STREAM_TID,
        OUTPUT_STREAM_TDEST
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state6 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [7:0] img_data_stream_V_dout;
input   img_data_stream_V_empty_n;
output   img_data_stream_V_read;
output  [23:0] OUTPUT_STREAM_TDATA;
output   OUTPUT_STREAM_TVALID;
input   OUTPUT_STREAM_TREADY;
output  [2:0] OUTPUT_STREAM_TKEEP;
output  [2:0] OUTPUT_STREAM_TSTRB;
output  [0:0] OUTPUT_STREAM_TUSER;
output  [0:0] OUTPUT_STREAM_TLAST;
output  [0:0] OUTPUT_STREAM_TID;
output  [0:0] OUTPUT_STREAM_TDEST;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg img_data_stream_V_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [23:0] AXI_video_strm_V_data_V_1_data_out;
reg    AXI_video_strm_V_data_V_1_vld_in;
wire    AXI_video_strm_V_data_V_1_vld_out;
wire    AXI_video_strm_V_data_V_1_ack_in;
wire    AXI_video_strm_V_data_V_1_ack_out;
reg   [23:0] AXI_video_strm_V_data_V_1_payload_A;
reg   [23:0] AXI_video_strm_V_data_V_1_payload_B;
reg    AXI_video_strm_V_data_V_1_sel_rd;
reg    AXI_video_strm_V_data_V_1_sel_wr;
wire    AXI_video_strm_V_data_V_1_sel;
wire    AXI_video_strm_V_data_V_1_load_A;
wire    AXI_video_strm_V_data_V_1_load_B;
reg   [1:0] AXI_video_strm_V_data_V_1_state;
wire    AXI_video_strm_V_data_V_1_state_cmp_full;
wire   [2:0] AXI_video_strm_V_keep_V_1_data_out;
reg    AXI_video_strm_V_keep_V_1_vld_in;
wire    AXI_video_strm_V_keep_V_1_vld_out;
wire    AXI_video_strm_V_keep_V_1_ack_in;
wire    AXI_video_strm_V_keep_V_1_ack_out;
reg    AXI_video_strm_V_keep_V_1_sel_rd;
wire    AXI_video_strm_V_keep_V_1_sel;
reg   [1:0] AXI_video_strm_V_keep_V_1_state;
wire   [2:0] AXI_video_strm_V_strb_V_1_data_out;
reg    AXI_video_strm_V_strb_V_1_vld_in;
wire    AXI_video_strm_V_strb_V_1_vld_out;
wire    AXI_video_strm_V_strb_V_1_ack_in;
wire    AXI_video_strm_V_strb_V_1_ack_out;
reg    AXI_video_strm_V_strb_V_1_sel_rd;
wire    AXI_video_strm_V_strb_V_1_sel;
reg   [1:0] AXI_video_strm_V_strb_V_1_state;
reg   [0:0] AXI_video_strm_V_user_V_1_data_out;
reg    AXI_video_strm_V_user_V_1_vld_in;
wire    AXI_video_strm_V_user_V_1_vld_out;
wire    AXI_video_strm_V_user_V_1_ack_in;
wire    AXI_video_strm_V_user_V_1_ack_out;
reg   [0:0] AXI_video_strm_V_user_V_1_payload_A;
reg   [0:0] AXI_video_strm_V_user_V_1_payload_B;
reg    AXI_video_strm_V_user_V_1_sel_rd;
reg    AXI_video_strm_V_user_V_1_sel_wr;
wire    AXI_video_strm_V_user_V_1_sel;
wire    AXI_video_strm_V_user_V_1_load_A;
wire    AXI_video_strm_V_user_V_1_load_B;
reg   [1:0] AXI_video_strm_V_user_V_1_state;
wire    AXI_video_strm_V_user_V_1_state_cmp_full;
reg   [0:0] AXI_video_strm_V_last_V_1_data_out;
reg    AXI_video_strm_V_last_V_1_vld_in;
wire    AXI_video_strm_V_last_V_1_vld_out;
wire    AXI_video_strm_V_last_V_1_ack_in;
wire    AXI_video_strm_V_last_V_1_ack_out;
reg   [0:0] AXI_video_strm_V_last_V_1_payload_A;
reg   [0:0] AXI_video_strm_V_last_V_1_payload_B;
reg    AXI_video_strm_V_last_V_1_sel_rd;
reg    AXI_video_strm_V_last_V_1_sel_wr;
wire    AXI_video_strm_V_last_V_1_sel;
wire    AXI_video_strm_V_last_V_1_load_A;
wire    AXI_video_strm_V_last_V_1_load_B;
reg   [1:0] AXI_video_strm_V_last_V_1_state;
wire    AXI_video_strm_V_last_V_1_state_cmp_full;
wire   [0:0] AXI_video_strm_V_id_V_1_data_out;
reg    AXI_video_strm_V_id_V_1_vld_in;
wire    AXI_video_strm_V_id_V_1_vld_out;
wire    AXI_video_strm_V_id_V_1_ack_in;
wire    AXI_video_strm_V_id_V_1_ack_out;
reg    AXI_video_strm_V_id_V_1_sel_rd;
wire    AXI_video_strm_V_id_V_1_sel;
reg   [1:0] AXI_video_strm_V_id_V_1_state;
wire   [0:0] AXI_video_strm_V_dest_V_1_data_out;
reg    AXI_video_strm_V_dest_V_1_vld_in;
wire    AXI_video_strm_V_dest_V_1_vld_out;
wire    AXI_video_strm_V_dest_V_1_ack_in;
wire    AXI_video_strm_V_dest_V_1_ack_out;
reg    AXI_video_strm_V_dest_V_1_sel_rd;
wire    AXI_video_strm_V_dest_V_1_sel;
reg   [1:0] AXI_video_strm_V_dest_V_1_state;
reg    img_data_stream_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] exitcond_reg_232;
reg    OUTPUT_STREAM_TDATA_blk_n;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] exitcond_reg_232_pp0_iter1_reg;
reg   [10:0] t_V_2_reg_152;
wire   [0:0] exitcond2_fu_168_p2;
wire    ap_CS_fsm_state2;
reg    ap_block_state2;
wire   [9:0] i_V_fu_174_p2;
reg   [9:0] i_V_reg_227;
wire   [0:0] exitcond_fu_180_p2;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_block_state4_pp0_stage0_iter1;
reg    ap_block_state4_io;
wire    ap_block_state5_pp0_stage0_iter2;
reg    ap_block_state5_io;
reg    ap_block_pp0_stage0_11001;
wire   [10:0] j_V_fu_186_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] axi_last_V_fu_192_p2;
reg   [0:0] axi_last_V_reg_241;
wire   [23:0] p_Result_s_fu_202_p3;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg   [9:0] t_V_reg_141;
reg    ap_block_state1;
wire    ap_CS_fsm_state6;
reg   [0:0] tmp_user_V_fu_102;
reg    ap_block_pp0_stage0_01001;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 AXI_video_strm_V_data_V_1_sel_rd = 1'b0;
#0 AXI_video_strm_V_data_V_1_sel_wr = 1'b0;
#0 AXI_video_strm_V_data_V_1_state = 2'd0;
#0 AXI_video_strm_V_keep_V_1_sel_rd = 1'b0;
#0 AXI_video_strm_V_keep_V_1_state = 2'd0;
#0 AXI_video_strm_V_strb_V_1_sel_rd = 1'b0;
#0 AXI_video_strm_V_strb_V_1_state = 2'd0;
#0 AXI_video_strm_V_user_V_1_sel_rd = 1'b0;
#0 AXI_video_strm_V_user_V_1_sel_wr = 1'b0;
#0 AXI_video_strm_V_user_V_1_state = 2'd0;
#0 AXI_video_strm_V_last_V_1_sel_rd = 1'b0;
#0 AXI_video_strm_V_last_V_1_sel_wr = 1'b0;
#0 AXI_video_strm_V_last_V_1_state = 2'd0;
#0 AXI_video_strm_V_id_V_1_sel_rd = 1'b0;
#0 AXI_video_strm_V_id_V_1_state = 2'd0;
#0 AXI_video_strm_V_dest_V_1_sel_rd = 1'b0;
#0 AXI_video_strm_V_dest_V_1_state = 2'd0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_data_V_1_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == AXI_video_strm_V_data_V_1_ack_out) & (1'b1 == AXI_video_strm_V_data_V_1_vld_out))) begin
            AXI_video_strm_V_data_V_1_sel_rd <= ~AXI_video_strm_V_data_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_data_V_1_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == AXI_video_strm_V_data_V_1_ack_in) & (1'b1 == AXI_video_strm_V_data_V_1_vld_in))) begin
            AXI_video_strm_V_data_V_1_sel_wr <= ~AXI_video_strm_V_data_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_data_V_1_state <= 2'd0;
    end else begin
        if ((((2'd2 == AXI_video_strm_V_data_V_1_state) & (1'b0 == AXI_video_strm_V_data_V_1_vld_in)) | ((2'd3 == AXI_video_strm_V_data_V_1_state) & (1'b0 == AXI_video_strm_V_data_V_1_vld_in) & (1'b1 == AXI_video_strm_V_data_V_1_ack_out)))) begin
            AXI_video_strm_V_data_V_1_state <= 2'd2;
        end else if ((((2'd1 == AXI_video_strm_V_data_V_1_state) & (1'b0 == AXI_video_strm_V_data_V_1_ack_out)) | ((2'd3 == AXI_video_strm_V_data_V_1_state) & (1'b0 == AXI_video_strm_V_data_V_1_ack_out) & (1'b1 == AXI_video_strm_V_data_V_1_vld_in)))) begin
            AXI_video_strm_V_data_V_1_state <= 2'd1;
        end else if (((~((1'b0 == AXI_video_strm_V_data_V_1_vld_in) & (1'b1 == AXI_video_strm_V_data_V_1_ack_out)) & ~((1'b0 == AXI_video_strm_V_data_V_1_ack_out) & (1'b1 == AXI_video_strm_V_data_V_1_vld_in)) & (2'd3 == AXI_video_strm_V_data_V_1_state)) | ((2'd1 == AXI_video_strm_V_data_V_1_state) & (1'b1 == AXI_video_strm_V_data_V_1_ack_out)) | ((2'd2 == AXI_video_strm_V_data_V_1_state) & (1'b1 == AXI_video_strm_V_data_V_1_vld_in)))) begin
            AXI_video_strm_V_data_V_1_state <= 2'd3;
        end else begin
            AXI_video_strm_V_data_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_dest_V_1_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == AXI_video_strm_V_dest_V_1_ack_out) & (1'b1 == AXI_video_strm_V_dest_V_1_vld_out))) begin
            AXI_video_strm_V_dest_V_1_sel_rd <= ~AXI_video_strm_V_dest_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_dest_V_1_state <= 2'd0;
    end else begin
        if ((((2'd2 == AXI_video_strm_V_dest_V_1_state) & (1'b0 == AXI_video_strm_V_dest_V_1_vld_in)) | ((2'd3 == AXI_video_strm_V_dest_V_1_state) & (1'b0 == AXI_video_strm_V_dest_V_1_vld_in) & (1'b1 == AXI_video_strm_V_dest_V_1_ack_out)))) begin
            AXI_video_strm_V_dest_V_1_state <= 2'd2;
        end else if ((((2'd1 == AXI_video_strm_V_dest_V_1_state) & (1'b0 == AXI_video_strm_V_dest_V_1_ack_out)) | ((2'd3 == AXI_video_strm_V_dest_V_1_state) & (1'b0 == AXI_video_strm_V_dest_V_1_ack_out) & (1'b1 == AXI_video_strm_V_dest_V_1_vld_in)))) begin
            AXI_video_strm_V_dest_V_1_state <= 2'd1;
        end else if (((~((1'b0 == AXI_video_strm_V_dest_V_1_vld_in) & (1'b1 == AXI_video_strm_V_dest_V_1_ack_out)) & ~((1'b0 == AXI_video_strm_V_dest_V_1_ack_out) & (1'b1 == AXI_video_strm_V_dest_V_1_vld_in)) & (2'd3 == AXI_video_strm_V_dest_V_1_state)) | ((2'd1 == AXI_video_strm_V_dest_V_1_state) & (1'b1 == AXI_video_strm_V_dest_V_1_ack_out)) | ((2'd2 == AXI_video_strm_V_dest_V_1_state) & (1'b1 == AXI_video_strm_V_dest_V_1_vld_in)))) begin
            AXI_video_strm_V_dest_V_1_state <= 2'd3;
        end else begin
            AXI_video_strm_V_dest_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_id_V_1_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == AXI_video_strm_V_id_V_1_ack_out) & (1'b1 == AXI_video_strm_V_id_V_1_vld_out))) begin
            AXI_video_strm_V_id_V_1_sel_rd <= ~AXI_video_strm_V_id_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_id_V_1_state <= 2'd0;
    end else begin
        if ((((2'd2 == AXI_video_strm_V_id_V_1_state) & (1'b0 == AXI_video_strm_V_id_V_1_vld_in)) | ((2'd3 == AXI_video_strm_V_id_V_1_state) & (1'b0 == AXI_video_strm_V_id_V_1_vld_in) & (1'b1 == AXI_video_strm_V_id_V_1_ack_out)))) begin
            AXI_video_strm_V_id_V_1_state <= 2'd2;
        end else if ((((2'd1 == AXI_video_strm_V_id_V_1_state) & (1'b0 == AXI_video_strm_V_id_V_1_ack_out)) | ((2'd3 == AXI_video_strm_V_id_V_1_state) & (1'b0 == AXI_video_strm_V_id_V_1_ack_out) & (1'b1 == AXI_video_strm_V_id_V_1_vld_in)))) begin
            AXI_video_strm_V_id_V_1_state <= 2'd1;
        end else if (((~((1'b0 == AXI_video_strm_V_id_V_1_vld_in) & (1'b1 == AXI_video_strm_V_id_V_1_ack_out)) & ~((1'b0 == AXI_video_strm_V_id_V_1_ack_out) & (1'b1 == AXI_video_strm_V_id_V_1_vld_in)) & (2'd3 == AXI_video_strm_V_id_V_1_state)) | ((2'd1 == AXI_video_strm_V_id_V_1_state) & (1'b1 == AXI_video_strm_V_id_V_1_ack_out)) | ((2'd2 == AXI_video_strm_V_id_V_1_state) & (1'b1 == AXI_video_strm_V_id_V_1_vld_in)))) begin
            AXI_video_strm_V_id_V_1_state <= 2'd3;
        end else begin
            AXI_video_strm_V_id_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_keep_V_1_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == AXI_video_strm_V_keep_V_1_ack_out) & (1'b1 == AXI_video_strm_V_keep_V_1_vld_out))) begin
            AXI_video_strm_V_keep_V_1_sel_rd <= ~AXI_video_strm_V_keep_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_keep_V_1_state <= 2'd0;
    end else begin
        if ((((2'd2 == AXI_video_strm_V_keep_V_1_state) & (1'b0 == AXI_video_strm_V_keep_V_1_vld_in)) | ((2'd3 == AXI_video_strm_V_keep_V_1_state) & (1'b0 == AXI_video_strm_V_keep_V_1_vld_in) & (1'b1 == AXI_video_strm_V_keep_V_1_ack_out)))) begin
            AXI_video_strm_V_keep_V_1_state <= 2'd2;
        end else if ((((2'd1 == AXI_video_strm_V_keep_V_1_state) & (1'b0 == AXI_video_strm_V_keep_V_1_ack_out)) | ((2'd3 == AXI_video_strm_V_keep_V_1_state) & (1'b0 == AXI_video_strm_V_keep_V_1_ack_out) & (1'b1 == AXI_video_strm_V_keep_V_1_vld_in)))) begin
            AXI_video_strm_V_keep_V_1_state <= 2'd1;
        end else if (((~((1'b0 == AXI_video_strm_V_keep_V_1_vld_in) & (1'b1 == AXI_video_strm_V_keep_V_1_ack_out)) & ~((1'b0 == AXI_video_strm_V_keep_V_1_ack_out) & (1'b1 == AXI_video_strm_V_keep_V_1_vld_in)) & (2'd3 == AXI_video_strm_V_keep_V_1_state)) | ((2'd1 == AXI_video_strm_V_keep_V_1_state) & (1'b1 == AXI_video_strm_V_keep_V_1_ack_out)) | ((2'd2 == AXI_video_strm_V_keep_V_1_state) & (1'b1 == AXI_video_strm_V_keep_V_1_vld_in)))) begin
            AXI_video_strm_V_keep_V_1_state <= 2'd3;
        end else begin
            AXI_video_strm_V_keep_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_last_V_1_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == AXI_video_strm_V_last_V_1_ack_out) & (1'b1 == AXI_video_strm_V_last_V_1_vld_out))) begin
            AXI_video_strm_V_last_V_1_sel_rd <= ~AXI_video_strm_V_last_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_last_V_1_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == AXI_video_strm_V_last_V_1_ack_in) & (1'b1 == AXI_video_strm_V_last_V_1_vld_in))) begin
            AXI_video_strm_V_last_V_1_sel_wr <= ~AXI_video_strm_V_last_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_last_V_1_state <= 2'd0;
    end else begin
        if ((((2'd2 == AXI_video_strm_V_last_V_1_state) & (1'b0 == AXI_video_strm_V_last_V_1_vld_in)) | ((2'd3 == AXI_video_strm_V_last_V_1_state) & (1'b0 == AXI_video_strm_V_last_V_1_vld_in) & (1'b1 == AXI_video_strm_V_last_V_1_ack_out)))) begin
            AXI_video_strm_V_last_V_1_state <= 2'd2;
        end else if ((((2'd1 == AXI_video_strm_V_last_V_1_state) & (1'b0 == AXI_video_strm_V_last_V_1_ack_out)) | ((2'd3 == AXI_video_strm_V_last_V_1_state) & (1'b0 == AXI_video_strm_V_last_V_1_ack_out) & (1'b1 == AXI_video_strm_V_last_V_1_vld_in)))) begin
            AXI_video_strm_V_last_V_1_state <= 2'd1;
        end else if (((~((1'b0 == AXI_video_strm_V_last_V_1_vld_in) & (1'b1 == AXI_video_strm_V_last_V_1_ack_out)) & ~((1'b0 == AXI_video_strm_V_last_V_1_ack_out) & (1'b1 == AXI_video_strm_V_last_V_1_vld_in)) & (2'd3 == AXI_video_strm_V_last_V_1_state)) | ((2'd1 == AXI_video_strm_V_last_V_1_state) & (1'b1 == AXI_video_strm_V_last_V_1_ack_out)) | ((2'd2 == AXI_video_strm_V_last_V_1_state) & (1'b1 == AXI_video_strm_V_last_V_1_vld_in)))) begin
            AXI_video_strm_V_last_V_1_state <= 2'd3;
        end else begin
            AXI_video_strm_V_last_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_strb_V_1_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == AXI_video_strm_V_strb_V_1_ack_out) & (1'b1 == AXI_video_strm_V_strb_V_1_vld_out))) begin
            AXI_video_strm_V_strb_V_1_sel_rd <= ~AXI_video_strm_V_strb_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_strb_V_1_state <= 2'd0;
    end else begin
        if ((((2'd2 == AXI_video_strm_V_strb_V_1_state) & (1'b0 == AXI_video_strm_V_strb_V_1_vld_in)) | ((2'd3 == AXI_video_strm_V_strb_V_1_state) & (1'b0 == AXI_video_strm_V_strb_V_1_vld_in) & (1'b1 == AXI_video_strm_V_strb_V_1_ack_out)))) begin
            AXI_video_strm_V_strb_V_1_state <= 2'd2;
        end else if ((((2'd1 == AXI_video_strm_V_strb_V_1_state) & (1'b0 == AXI_video_strm_V_strb_V_1_ack_out)) | ((2'd3 == AXI_video_strm_V_strb_V_1_state) & (1'b0 == AXI_video_strm_V_strb_V_1_ack_out) & (1'b1 == AXI_video_strm_V_strb_V_1_vld_in)))) begin
            AXI_video_strm_V_strb_V_1_state <= 2'd1;
        end else if (((~((1'b0 == AXI_video_strm_V_strb_V_1_vld_in) & (1'b1 == AXI_video_strm_V_strb_V_1_ack_out)) & ~((1'b0 == AXI_video_strm_V_strb_V_1_ack_out) & (1'b1 == AXI_video_strm_V_strb_V_1_vld_in)) & (2'd3 == AXI_video_strm_V_strb_V_1_state)) | ((2'd1 == AXI_video_strm_V_strb_V_1_state) & (1'b1 == AXI_video_strm_V_strb_V_1_ack_out)) | ((2'd2 == AXI_video_strm_V_strb_V_1_state) & (1'b1 == AXI_video_strm_V_strb_V_1_vld_in)))) begin
            AXI_video_strm_V_strb_V_1_state <= 2'd3;
        end else begin
            AXI_video_strm_V_strb_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_user_V_1_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == AXI_video_strm_V_user_V_1_ack_out) & (1'b1 == AXI_video_strm_V_user_V_1_vld_out))) begin
            AXI_video_strm_V_user_V_1_sel_rd <= ~AXI_video_strm_V_user_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_user_V_1_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == AXI_video_strm_V_user_V_1_ack_in) & (1'b1 == AXI_video_strm_V_user_V_1_vld_in))) begin
            AXI_video_strm_V_user_V_1_sel_wr <= ~AXI_video_strm_V_user_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_user_V_1_state <= 2'd0;
    end else begin
        if ((((2'd2 == AXI_video_strm_V_user_V_1_state) & (1'b0 == AXI_video_strm_V_user_V_1_vld_in)) | ((2'd3 == AXI_video_strm_V_user_V_1_state) & (1'b0 == AXI_video_strm_V_user_V_1_vld_in) & (1'b1 == AXI_video_strm_V_user_V_1_ack_out)))) begin
            AXI_video_strm_V_user_V_1_state <= 2'd2;
        end else if ((((2'd1 == AXI_video_strm_V_user_V_1_state) & (1'b0 == AXI_video_strm_V_user_V_1_ack_out)) | ((2'd3 == AXI_video_strm_V_user_V_1_state) & (1'b0 == AXI_video_strm_V_user_V_1_ack_out) & (1'b1 == AXI_video_strm_V_user_V_1_vld_in)))) begin
            AXI_video_strm_V_user_V_1_state <= 2'd1;
        end else if (((~((1'b0 == AXI_video_strm_V_user_V_1_vld_in) & (1'b1 == AXI_video_strm_V_user_V_1_ack_out)) & ~((1'b0 == AXI_video_strm_V_user_V_1_ack_out) & (1'b1 == AXI_video_strm_V_user_V_1_vld_in)) & (2'd3 == AXI_video_strm_V_user_V_1_state)) | ((2'd1 == AXI_video_strm_V_user_V_1_state) & (1'b1 == AXI_video_strm_V_user_V_1_ack_out)) | ((2'd2 == AXI_video_strm_V_user_V_1_state) & (1'b1 == AXI_video_strm_V_user_V_1_vld_in)))) begin
            AXI_video_strm_V_user_V_1_state <= 2'd3;
        end else begin
            AXI_video_strm_V_user_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~((1'b0 == AXI_video_strm_V_data_V_1_ack_in) | (1'b0 == AXI_video_strm_V_dest_V_1_ack_in) | (1'b0 == AXI_video_strm_V_id_V_1_ack_in) | (1'b0 == AXI_video_strm_V_last_V_1_ack_in) | (1'b0 == AXI_video_strm_V_user_V_1_ack_in) | (1'b0 == AXI_video_strm_V_strb_V_1_ack_in) | (1'b0 == AXI_video_strm_V_keep_V_1_ack_in)) & (exitcond2_fu_168_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((1'b0 == AXI_video_strm_V_data_V_1_ack_in) | (1'b0 == AXI_video_strm_V_dest_V_1_ack_in) | (1'b0 == AXI_video_strm_V_id_V_1_ack_in) | (1'b0 == AXI_video_strm_V_last_V_1_ack_in) | (1'b0 == AXI_video_strm_V_user_V_1_ack_in) | (1'b0 == AXI_video_strm_V_strb_V_1_ack_in) | (1'b0 == AXI_video_strm_V_keep_V_1_ack_in)) & (exitcond2_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state3)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((~((1'b0 == AXI_video_strm_V_data_V_1_ack_in) | (1'b0 == AXI_video_strm_V_dest_V_1_ack_in) | (1'b0 == AXI_video_strm_V_id_V_1_ack_in) | (1'b0 == AXI_video_strm_V_last_V_1_ack_in) | (1'b0 == AXI_video_strm_V_user_V_1_ack_in) | (1'b0 == AXI_video_strm_V_strb_V_1_ack_in) | (1'b0 == AXI_video_strm_V_keep_V_1_ack_in)) & (exitcond2_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_180_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        t_V_2_reg_152 <= j_V_fu_186_p2;
    end else if ((~((1'b0 == AXI_video_strm_V_data_V_1_ack_in) | (1'b0 == AXI_video_strm_V_dest_V_1_ack_in) | (1'b0 == AXI_video_strm_V_id_V_1_ack_in) | (1'b0 == AXI_video_strm_V_last_V_1_ack_in) | (1'b0 == AXI_video_strm_V_user_V_1_ack_in) | (1'b0 == AXI_video_strm_V_strb_V_1_ack_in) | (1'b0 == AXI_video_strm_V_keep_V_1_ack_in)) & (exitcond2_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        t_V_2_reg_152 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        t_V_reg_141 <= i_V_reg_227;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        t_V_reg_141 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_reg_232 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_user_V_fu_102 <= 1'd0;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_user_V_fu_102 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == AXI_video_strm_V_data_V_1_load_A)) begin
        AXI_video_strm_V_data_V_1_payload_A <= p_Result_s_fu_202_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == AXI_video_strm_V_data_V_1_load_B)) begin
        AXI_video_strm_V_data_V_1_payload_B <= p_Result_s_fu_202_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == AXI_video_strm_V_last_V_1_load_A)) begin
        AXI_video_strm_V_last_V_1_payload_A <= axi_last_V_reg_241;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == AXI_video_strm_V_last_V_1_load_B)) begin
        AXI_video_strm_V_last_V_1_payload_B <= axi_last_V_reg_241;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == AXI_video_strm_V_user_V_1_load_A)) begin
        AXI_video_strm_V_user_V_1_payload_A <= tmp_user_V_fu_102;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == AXI_video_strm_V_user_V_1_load_B)) begin
        AXI_video_strm_V_user_V_1_payload_B <= tmp_user_V_fu_102;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_180_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        axi_last_V_reg_241 <= axi_last_V_fu_192_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        exitcond_reg_232 <= exitcond_fu_180_p2;
        exitcond_reg_232_pp0_iter1_reg <= exitcond_reg_232;
    end
end

always @ (posedge ap_clk) begin
    if ((~((1'b0 == AXI_video_strm_V_data_V_1_ack_in) | (1'b0 == AXI_video_strm_V_dest_V_1_ack_in) | (1'b0 == AXI_video_strm_V_id_V_1_ack_in) | (1'b0 == AXI_video_strm_V_last_V_1_ack_in) | (1'b0 == AXI_video_strm_V_user_V_1_ack_in) | (1'b0 == AXI_video_strm_V_strb_V_1_ack_in) | (1'b0 == AXI_video_strm_V_keep_V_1_ack_in)) & (1'b1 == ap_CS_fsm_state2))) begin
        i_V_reg_227 <= i_V_fu_174_p2;
    end
end

always @ (*) begin
    if ((1'b1 == AXI_video_strm_V_data_V_1_sel)) begin
        AXI_video_strm_V_data_V_1_data_out = AXI_video_strm_V_data_V_1_payload_B;
    end else begin
        AXI_video_strm_V_data_V_1_data_out = AXI_video_strm_V_data_V_1_payload_A;
    end
end

always @ (*) begin
    if (((exitcond_reg_232 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        AXI_video_strm_V_data_V_1_vld_in = 1'b1;
    end else begin
        AXI_video_strm_V_data_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_reg_232 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        AXI_video_strm_V_dest_V_1_vld_in = 1'b1;
    end else begin
        AXI_video_strm_V_dest_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_reg_232 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        AXI_video_strm_V_id_V_1_vld_in = 1'b1;
    end else begin
        AXI_video_strm_V_id_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_reg_232 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        AXI_video_strm_V_keep_V_1_vld_in = 1'b1;
    end else begin
        AXI_video_strm_V_keep_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == AXI_video_strm_V_last_V_1_sel)) begin
        AXI_video_strm_V_last_V_1_data_out = AXI_video_strm_V_last_V_1_payload_B;
    end else begin
        AXI_video_strm_V_last_V_1_data_out = AXI_video_strm_V_last_V_1_payload_A;
    end
end

always @ (*) begin
    if (((exitcond_reg_232 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        AXI_video_strm_V_last_V_1_vld_in = 1'b1;
    end else begin
        AXI_video_strm_V_last_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_reg_232 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        AXI_video_strm_V_strb_V_1_vld_in = 1'b1;
    end else begin
        AXI_video_strm_V_strb_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == AXI_video_strm_V_user_V_1_sel)) begin
        AXI_video_strm_V_user_V_1_data_out = AXI_video_strm_V_user_V_1_payload_B;
    end else begin
        AXI_video_strm_V_user_V_1_data_out = AXI_video_strm_V_user_V_1_payload_A;
    end
end

always @ (*) begin
    if (((exitcond_reg_232 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        AXI_video_strm_V_user_V_1_vld_in = 1'b1;
    end else begin
        AXI_video_strm_V_user_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((((exitcond_reg_232_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((exitcond_reg_232 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        OUTPUT_STREAM_TDATA_blk_n = AXI_video_strm_V_data_V_1_state[1'd1];
    end else begin
        OUTPUT_STREAM_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((exitcond_fu_180_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if ((~((1'b0 == AXI_video_strm_V_data_V_1_ack_in) | (1'b0 == AXI_video_strm_V_dest_V_1_ack_in) | (1'b0 == AXI_video_strm_V_id_V_1_ack_in) | (1'b0 == AXI_video_strm_V_last_V_1_ack_in) | (1'b0 == AXI_video_strm_V_user_V_1_ack_in) | (1'b0 == AXI_video_strm_V_strb_V_1_ack_in) | (1'b0 == AXI_video_strm_V_keep_V_1_ack_in)) & (exitcond2_fu_168_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((1'b0 == AXI_video_strm_V_data_V_1_ack_in) | (1'b0 == AXI_video_strm_V_dest_V_1_ack_in) | (1'b0 == AXI_video_strm_V_id_V_1_ack_in) | (1'b0 == AXI_video_strm_V_last_V_1_ack_in) | (1'b0 == AXI_video_strm_V_user_V_1_ack_in) | (1'b0 == AXI_video_strm_V_strb_V_1_ack_in) | (1'b0 == AXI_video_strm_V_keep_V_1_ack_in)) & (exitcond2_fu_168_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_reg_232 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        img_data_stream_V_blk_n = img_data_stream_V_empty_n;
    end else begin
        img_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_reg_232 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        img_data_stream_V_read = 1'b1;
    end else begin
        img_data_stream_V_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~((1'b0 == AXI_video_strm_V_data_V_1_ack_in) | (1'b0 == AXI_video_strm_V_dest_V_1_ack_in) | (1'b0 == AXI_video_strm_V_id_V_1_ack_in) | (1'b0 == AXI_video_strm_V_last_V_1_ack_in) | (1'b0 == AXI_video_strm_V_user_V_1_ack_in) | (1'b0 == AXI_video_strm_V_strb_V_1_ack_in) | (1'b0 == AXI_video_strm_V_keep_V_1_ack_in)) & (exitcond2_fu_168_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if ((~((1'b0 == AXI_video_strm_V_data_V_1_ack_in) | (1'b0 == AXI_video_strm_V_dest_V_1_ack_in) | (1'b0 == AXI_video_strm_V_id_V_1_ack_in) | (1'b0 == AXI_video_strm_V_last_V_1_ack_in) | (1'b0 == AXI_video_strm_V_user_V_1_ack_in) | (1'b0 == AXI_video_strm_V_strb_V_1_ack_in) | (1'b0 == AXI_video_strm_V_keep_V_1_ack_in)) & (exitcond2_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((1'b0 == ap_block_pp0_stage0_subdone) & (exitcond_fu_180_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) & ~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((1'b0 == ap_block_pp0_stage0_subdone) & (exitcond_fu_180_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign AXI_video_strm_V_data_V_1_ack_in = AXI_video_strm_V_data_V_1_state[1'd1];

assign AXI_video_strm_V_data_V_1_ack_out = OUTPUT_STREAM_TREADY;

assign AXI_video_strm_V_data_V_1_load_A = (~AXI_video_strm_V_data_V_1_sel_wr & AXI_video_strm_V_data_V_1_state_cmp_full);

assign AXI_video_strm_V_data_V_1_load_B = (AXI_video_strm_V_data_V_1_state_cmp_full & AXI_video_strm_V_data_V_1_sel_wr);

assign AXI_video_strm_V_data_V_1_sel = AXI_video_strm_V_data_V_1_sel_rd;

assign AXI_video_strm_V_data_V_1_state_cmp_full = ((AXI_video_strm_V_data_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign AXI_video_strm_V_data_V_1_vld_out = AXI_video_strm_V_data_V_1_state[1'd0];

assign AXI_video_strm_V_dest_V_1_ack_in = AXI_video_strm_V_dest_V_1_state[1'd1];

assign AXI_video_strm_V_dest_V_1_ack_out = OUTPUT_STREAM_TREADY;

assign AXI_video_strm_V_dest_V_1_data_out = 1'd0;

assign AXI_video_strm_V_dest_V_1_sel = AXI_video_strm_V_dest_V_1_sel_rd;

assign AXI_video_strm_V_dest_V_1_vld_out = AXI_video_strm_V_dest_V_1_state[1'd0];

assign AXI_video_strm_V_id_V_1_ack_in = AXI_video_strm_V_id_V_1_state[1'd1];

assign AXI_video_strm_V_id_V_1_ack_out = OUTPUT_STREAM_TREADY;

assign AXI_video_strm_V_id_V_1_data_out = 1'd0;

assign AXI_video_strm_V_id_V_1_sel = AXI_video_strm_V_id_V_1_sel_rd;

assign AXI_video_strm_V_id_V_1_vld_out = AXI_video_strm_V_id_V_1_state[1'd0];

assign AXI_video_strm_V_keep_V_1_ack_in = AXI_video_strm_V_keep_V_1_state[1'd1];

assign AXI_video_strm_V_keep_V_1_ack_out = OUTPUT_STREAM_TREADY;

assign AXI_video_strm_V_keep_V_1_data_out = 3'd7;

assign AXI_video_strm_V_keep_V_1_sel = AXI_video_strm_V_keep_V_1_sel_rd;

assign AXI_video_strm_V_keep_V_1_vld_out = AXI_video_strm_V_keep_V_1_state[1'd0];

assign AXI_video_strm_V_last_V_1_ack_in = AXI_video_strm_V_last_V_1_state[1'd1];

assign AXI_video_strm_V_last_V_1_ack_out = OUTPUT_STREAM_TREADY;

assign AXI_video_strm_V_last_V_1_load_A = (~AXI_video_strm_V_last_V_1_sel_wr & AXI_video_strm_V_last_V_1_state_cmp_full);

assign AXI_video_strm_V_last_V_1_load_B = (AXI_video_strm_V_last_V_1_state_cmp_full & AXI_video_strm_V_last_V_1_sel_wr);

assign AXI_video_strm_V_last_V_1_sel = AXI_video_strm_V_last_V_1_sel_rd;

assign AXI_video_strm_V_last_V_1_state_cmp_full = ((AXI_video_strm_V_last_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign AXI_video_strm_V_last_V_1_vld_out = AXI_video_strm_V_last_V_1_state[1'd0];

assign AXI_video_strm_V_strb_V_1_ack_in = AXI_video_strm_V_strb_V_1_state[1'd1];

assign AXI_video_strm_V_strb_V_1_ack_out = OUTPUT_STREAM_TREADY;

assign AXI_video_strm_V_strb_V_1_data_out = 3'd0;

assign AXI_video_strm_V_strb_V_1_sel = AXI_video_strm_V_strb_V_1_sel_rd;

assign AXI_video_strm_V_strb_V_1_vld_out = AXI_video_strm_V_strb_V_1_state[1'd0];

assign AXI_video_strm_V_user_V_1_ack_in = AXI_video_strm_V_user_V_1_state[1'd1];

assign AXI_video_strm_V_user_V_1_ack_out = OUTPUT_STREAM_TREADY;

assign AXI_video_strm_V_user_V_1_load_A = (~AXI_video_strm_V_user_V_1_sel_wr & AXI_video_strm_V_user_V_1_state_cmp_full);

assign AXI_video_strm_V_user_V_1_load_B = (AXI_video_strm_V_user_V_1_state_cmp_full & AXI_video_strm_V_user_V_1_sel_wr);

assign AXI_video_strm_V_user_V_1_sel = AXI_video_strm_V_user_V_1_sel_rd;

assign AXI_video_strm_V_user_V_1_state_cmp_full = ((AXI_video_strm_V_user_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign AXI_video_strm_V_user_V_1_vld_out = AXI_video_strm_V_user_V_1_state[1'd0];

assign OUTPUT_STREAM_TDATA = AXI_video_strm_V_data_V_1_data_out;

assign OUTPUT_STREAM_TDEST = AXI_video_strm_V_dest_V_1_data_out;

assign OUTPUT_STREAM_TID = AXI_video_strm_V_id_V_1_data_out;

assign OUTPUT_STREAM_TKEEP = AXI_video_strm_V_keep_V_1_data_out;

assign OUTPUT_STREAM_TLAST = AXI_video_strm_V_last_V_1_data_out;

assign OUTPUT_STREAM_TSTRB = AXI_video_strm_V_strb_V_1_data_out;

assign OUTPUT_STREAM_TUSER = AXI_video_strm_V_user_V_1_data_out;

assign OUTPUT_STREAM_TVALID = AXI_video_strm_V_dest_V_1_state[1'd0];

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((exitcond_reg_232 == 1'd0) & (img_data_stream_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((1'b1 == ap_block_state5_io) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state4_io) | ((exitcond_reg_232 == 1'd0) & (img_data_stream_V_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((1'b1 == ap_block_state5_io) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state4_io) | ((exitcond_reg_232 == 1'd0) & (img_data_stream_V_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state2 = ((1'b0 == AXI_video_strm_V_data_V_1_ack_in) | (1'b0 == AXI_video_strm_V_dest_V_1_ack_in) | (1'b0 == AXI_video_strm_V_id_V_1_ack_in) | (1'b0 == AXI_video_strm_V_last_V_1_ack_in) | (1'b0 == AXI_video_strm_V_user_V_1_ack_in) | (1'b0 == AXI_video_strm_V_strb_V_1_ack_in) | (1'b0 == AXI_video_strm_V_keep_V_1_ack_in));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_io = ((exitcond_reg_232 == 1'd0) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in));
end

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = ((exitcond_reg_232 == 1'd0) & (img_data_stream_V_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state5_io = ((exitcond_reg_232_pp0_iter1_reg == 1'd0) & (1'b0 == AXI_video_strm_V_data_V_1_ack_in));
end

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign axi_last_V_fu_192_p2 = ((t_V_2_reg_152 == 11'd1279) ? 1'b1 : 1'b0);

assign exitcond2_fu_168_p2 = ((t_V_reg_141 == 10'd720) ? 1'b1 : 1'b0);

assign exitcond_fu_180_p2 = ((t_V_2_reg_152 == 11'd1280) ? 1'b1 : 1'b0);

assign i_V_fu_174_p2 = (t_V_reg_141 + 10'd1);

assign j_V_fu_186_p2 = (t_V_2_reg_152 + 11'd1);

assign p_Result_s_fu_202_p3 = {{16'd65535}, {img_data_stream_V_dout}};

endmodule //Mat2AXIvideo

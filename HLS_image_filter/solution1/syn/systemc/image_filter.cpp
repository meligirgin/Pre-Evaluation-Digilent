// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "image_filter.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_lv<24> image_filter::ap_const_lv24_0 = "000000000000000000000000";
const sc_lv<3> image_filter::ap_const_lv3_0 = "000";
const sc_lv<1> image_filter::ap_const_lv1_0 = "0";
const sc_logic image_filter::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic image_filter::ap_const_logic_0 = sc_dt::Log_0;

image_filter::image_filter(sc_module_name name) : sc_module(name), mVcdFile(0) {
    Block_proc_U0 = new Block_proc("Block_proc_U0");
    Block_proc_U0->ap_clk(ap_clk);
    Block_proc_U0->ap_rst(ap_rst_n_inv);
    Block_proc_U0->ap_start(Block_proc_U0_ap_start);
    Block_proc_U0->ap_done(Block_proc_U0_ap_done);
    Block_proc_U0->ap_continue(Block_proc_U0_ap_continue);
    Block_proc_U0->ap_idle(Block_proc_U0_ap_idle);
    Block_proc_U0->ap_ready(Block_proc_U0_ap_ready);
    Block_proc_U0->img_0_rows_V_out_din(Block_proc_U0_img_0_rows_V_out_din);
    Block_proc_U0->img_0_rows_V_out_full_n(img_0_rows_V_c_full_n);
    Block_proc_U0->img_0_rows_V_out_write(Block_proc_U0_img_0_rows_V_out_write);
    Block_proc_U0->img_0_cols_V_out_din(Block_proc_U0_img_0_cols_V_out_din);
    Block_proc_U0->img_0_cols_V_out_full_n(img_0_cols_V_c_full_n);
    Block_proc_U0->img_0_cols_V_out_write(Block_proc_U0_img_0_cols_V_out_write);
    AXIvideo2Mat_U0 = new AXIvideo2Mat("AXIvideo2Mat_U0");
    AXIvideo2Mat_U0->ap_clk(ap_clk);
    AXIvideo2Mat_U0->ap_rst(ap_rst_n_inv);
    AXIvideo2Mat_U0->ap_start(AXIvideo2Mat_U0_ap_start);
    AXIvideo2Mat_U0->start_full_n(start_for_CvtColor_U0_full_n);
    AXIvideo2Mat_U0->ap_done(AXIvideo2Mat_U0_ap_done);
    AXIvideo2Mat_U0->ap_continue(AXIvideo2Mat_U0_ap_continue);
    AXIvideo2Mat_U0->ap_idle(AXIvideo2Mat_U0_ap_idle);
    AXIvideo2Mat_U0->ap_ready(AXIvideo2Mat_U0_ap_ready);
    AXIvideo2Mat_U0->start_out(AXIvideo2Mat_U0_start_out);
    AXIvideo2Mat_U0->start_write(AXIvideo2Mat_U0_start_write);
    AXIvideo2Mat_U0->INPUT_STREAM_TDATA(INPUT_STREAM_TDATA);
    AXIvideo2Mat_U0->INPUT_STREAM_TVALID(INPUT_STREAM_TVALID);
    AXIvideo2Mat_U0->INPUT_STREAM_TREADY(AXIvideo2Mat_U0_INPUT_STREAM_TREADY);
    AXIvideo2Mat_U0->INPUT_STREAM_TKEEP(INPUT_STREAM_TKEEP);
    AXIvideo2Mat_U0->INPUT_STREAM_TSTRB(INPUT_STREAM_TSTRB);
    AXIvideo2Mat_U0->INPUT_STREAM_TUSER(INPUT_STREAM_TUSER);
    AXIvideo2Mat_U0->INPUT_STREAM_TLAST(INPUT_STREAM_TLAST);
    AXIvideo2Mat_U0->INPUT_STREAM_TID(INPUT_STREAM_TID);
    AXIvideo2Mat_U0->INPUT_STREAM_TDEST(INPUT_STREAM_TDEST);
    AXIvideo2Mat_U0->img_rows_V_dout(img_0_rows_V_c_dout);
    AXIvideo2Mat_U0->img_rows_V_empty_n(img_0_rows_V_c_empty_n);
    AXIvideo2Mat_U0->img_rows_V_read(AXIvideo2Mat_U0_img_rows_V_read);
    AXIvideo2Mat_U0->img_cols_V_dout(img_0_cols_V_c_dout);
    AXIvideo2Mat_U0->img_cols_V_empty_n(img_0_cols_V_c_empty_n);
    AXIvideo2Mat_U0->img_cols_V_read(AXIvideo2Mat_U0_img_cols_V_read);
    AXIvideo2Mat_U0->img_data_stream_0_V_din(AXIvideo2Mat_U0_img_data_stream_0_V_din);
    AXIvideo2Mat_U0->img_data_stream_0_V_full_n(img_0_data_stream_0_full_n);
    AXIvideo2Mat_U0->img_data_stream_0_V_write(AXIvideo2Mat_U0_img_data_stream_0_V_write);
    AXIvideo2Mat_U0->img_data_stream_1_V_din(AXIvideo2Mat_U0_img_data_stream_1_V_din);
    AXIvideo2Mat_U0->img_data_stream_1_V_full_n(img_0_data_stream_1_full_n);
    AXIvideo2Mat_U0->img_data_stream_1_V_write(AXIvideo2Mat_U0_img_data_stream_1_V_write);
    AXIvideo2Mat_U0->img_data_stream_2_V_din(AXIvideo2Mat_U0_img_data_stream_2_V_din);
    AXIvideo2Mat_U0->img_data_stream_2_V_full_n(img_0_data_stream_2_full_n);
    AXIvideo2Mat_U0->img_data_stream_2_V_write(AXIvideo2Mat_U0_img_data_stream_2_V_write);
    AXIvideo2Mat_U0->img_rows_V_out_din(AXIvideo2Mat_U0_img_rows_V_out_din);
    AXIvideo2Mat_U0->img_rows_V_out_full_n(img_0_rows_V_c8_full_n);
    AXIvideo2Mat_U0->img_rows_V_out_write(AXIvideo2Mat_U0_img_rows_V_out_write);
    AXIvideo2Mat_U0->img_cols_V_out_din(AXIvideo2Mat_U0_img_cols_V_out_din);
    AXIvideo2Mat_U0->img_cols_V_out_full_n(img_0_cols_V_c9_full_n);
    AXIvideo2Mat_U0->img_cols_V_out_write(AXIvideo2Mat_U0_img_cols_V_out_write);
    CvtColor_U0 = new CvtColor("CvtColor_U0");
    CvtColor_U0->ap_clk(ap_clk);
    CvtColor_U0->ap_rst(ap_rst_n_inv);
    CvtColor_U0->ap_start(CvtColor_U0_ap_start);
    CvtColor_U0->start_full_n(start_for_Threshold_U0_full_n);
    CvtColor_U0->ap_done(CvtColor_U0_ap_done);
    CvtColor_U0->ap_continue(CvtColor_U0_ap_continue);
    CvtColor_U0->ap_idle(CvtColor_U0_ap_idle);
    CvtColor_U0->ap_ready(CvtColor_U0_ap_ready);
    CvtColor_U0->start_out(CvtColor_U0_start_out);
    CvtColor_U0->start_write(CvtColor_U0_start_write);
    CvtColor_U0->p_src_rows_V_dout(img_0_rows_V_c8_dout);
    CvtColor_U0->p_src_rows_V_empty_n(img_0_rows_V_c8_empty_n);
    CvtColor_U0->p_src_rows_V_read(CvtColor_U0_p_src_rows_V_read);
    CvtColor_U0->p_src_cols_V_dout(img_0_cols_V_c9_dout);
    CvtColor_U0->p_src_cols_V_empty_n(img_0_cols_V_c9_empty_n);
    CvtColor_U0->p_src_cols_V_read(CvtColor_U0_p_src_cols_V_read);
    CvtColor_U0->p_src_data_stream_0_V_dout(img_0_data_stream_0_dout);
    CvtColor_U0->p_src_data_stream_0_V_empty_n(img_0_data_stream_0_empty_n);
    CvtColor_U0->p_src_data_stream_0_V_read(CvtColor_U0_p_src_data_stream_0_V_read);
    CvtColor_U0->p_src_data_stream_1_V_dout(img_0_data_stream_1_dout);
    CvtColor_U0->p_src_data_stream_1_V_empty_n(img_0_data_stream_1_empty_n);
    CvtColor_U0->p_src_data_stream_1_V_read(CvtColor_U0_p_src_data_stream_1_V_read);
    CvtColor_U0->p_src_data_stream_2_V_dout(img_0_data_stream_2_dout);
    CvtColor_U0->p_src_data_stream_2_V_empty_n(img_0_data_stream_2_empty_n);
    CvtColor_U0->p_src_data_stream_2_V_read(CvtColor_U0_p_src_data_stream_2_V_read);
    CvtColor_U0->p_dst_data_stream_V_din(CvtColor_U0_p_dst_data_stream_V_din);
    CvtColor_U0->p_dst_data_stream_V_full_n(img_1_data_stream_0_full_n);
    CvtColor_U0->p_dst_data_stream_V_write(CvtColor_U0_p_dst_data_stream_V_write);
    Threshold_U0 = new Threshold("Threshold_U0");
    Threshold_U0->ap_clk(ap_clk);
    Threshold_U0->ap_rst(ap_rst_n_inv);
    Threshold_U0->ap_start(Threshold_U0_ap_start);
    Threshold_U0->start_full_n(start_for_Mat2AXIvideo_U0_full_n);
    Threshold_U0->ap_done(Threshold_U0_ap_done);
    Threshold_U0->ap_continue(Threshold_U0_ap_continue);
    Threshold_U0->ap_idle(Threshold_U0_ap_idle);
    Threshold_U0->ap_ready(Threshold_U0_ap_ready);
    Threshold_U0->start_out(Threshold_U0_start_out);
    Threshold_U0->start_write(Threshold_U0_start_write);
    Threshold_U0->src_data_stream_V_dout(img_1_data_stream_0_dout);
    Threshold_U0->src_data_stream_V_empty_n(img_1_data_stream_0_empty_n);
    Threshold_U0->src_data_stream_V_read(Threshold_U0_src_data_stream_V_read);
    Threshold_U0->dst_data_stream_V_din(Threshold_U0_dst_data_stream_V_din);
    Threshold_U0->dst_data_stream_V_full_n(img_2_data_stream_0_full_n);
    Threshold_U0->dst_data_stream_V_write(Threshold_U0_dst_data_stream_V_write);
    Mat2AXIvideo_U0 = new Mat2AXIvideo("Mat2AXIvideo_U0");
    Mat2AXIvideo_U0->ap_clk(ap_clk);
    Mat2AXIvideo_U0->ap_rst(ap_rst_n_inv);
    Mat2AXIvideo_U0->ap_start(Mat2AXIvideo_U0_ap_start);
    Mat2AXIvideo_U0->ap_done(Mat2AXIvideo_U0_ap_done);
    Mat2AXIvideo_U0->ap_continue(Mat2AXIvideo_U0_ap_continue);
    Mat2AXIvideo_U0->ap_idle(Mat2AXIvideo_U0_ap_idle);
    Mat2AXIvideo_U0->ap_ready(Mat2AXIvideo_U0_ap_ready);
    Mat2AXIvideo_U0->img_data_stream_V_dout(img_2_data_stream_0_dout);
    Mat2AXIvideo_U0->img_data_stream_V_empty_n(img_2_data_stream_0_empty_n);
    Mat2AXIvideo_U0->img_data_stream_V_read(Mat2AXIvideo_U0_img_data_stream_V_read);
    Mat2AXIvideo_U0->OUTPUT_STREAM_TDATA(Mat2AXIvideo_U0_OUTPUT_STREAM_TDATA);
    Mat2AXIvideo_U0->OUTPUT_STREAM_TVALID(Mat2AXIvideo_U0_OUTPUT_STREAM_TVALID);
    Mat2AXIvideo_U0->OUTPUT_STREAM_TREADY(OUTPUT_STREAM_TREADY);
    Mat2AXIvideo_U0->OUTPUT_STREAM_TKEEP(Mat2AXIvideo_U0_OUTPUT_STREAM_TKEEP);
    Mat2AXIvideo_U0->OUTPUT_STREAM_TSTRB(Mat2AXIvideo_U0_OUTPUT_STREAM_TSTRB);
    Mat2AXIvideo_U0->OUTPUT_STREAM_TUSER(Mat2AXIvideo_U0_OUTPUT_STREAM_TUSER);
    Mat2AXIvideo_U0->OUTPUT_STREAM_TLAST(Mat2AXIvideo_U0_OUTPUT_STREAM_TLAST);
    Mat2AXIvideo_U0->OUTPUT_STREAM_TID(Mat2AXIvideo_U0_OUTPUT_STREAM_TID);
    Mat2AXIvideo_U0->OUTPUT_STREAM_TDEST(Mat2AXIvideo_U0_OUTPUT_STREAM_TDEST);
    img_0_rows_V_c_U = new fifo_w11_d2_A("img_0_rows_V_c_U");
    img_0_rows_V_c_U->clk(ap_clk);
    img_0_rows_V_c_U->reset(ap_rst_n_inv);
    img_0_rows_V_c_U->if_read_ce(ap_var_for_const0);
    img_0_rows_V_c_U->if_write_ce(ap_var_for_const0);
    img_0_rows_V_c_U->if_din(Block_proc_U0_img_0_rows_V_out_din);
    img_0_rows_V_c_U->if_full_n(img_0_rows_V_c_full_n);
    img_0_rows_V_c_U->if_write(Block_proc_U0_img_0_rows_V_out_write);
    img_0_rows_V_c_U->if_dout(img_0_rows_V_c_dout);
    img_0_rows_V_c_U->if_empty_n(img_0_rows_V_c_empty_n);
    img_0_rows_V_c_U->if_read(AXIvideo2Mat_U0_img_rows_V_read);
    img_0_cols_V_c_U = new fifo_w12_d2_A("img_0_cols_V_c_U");
    img_0_cols_V_c_U->clk(ap_clk);
    img_0_cols_V_c_U->reset(ap_rst_n_inv);
    img_0_cols_V_c_U->if_read_ce(ap_var_for_const0);
    img_0_cols_V_c_U->if_write_ce(ap_var_for_const0);
    img_0_cols_V_c_U->if_din(Block_proc_U0_img_0_cols_V_out_din);
    img_0_cols_V_c_U->if_full_n(img_0_cols_V_c_full_n);
    img_0_cols_V_c_U->if_write(Block_proc_U0_img_0_cols_V_out_write);
    img_0_cols_V_c_U->if_dout(img_0_cols_V_c_dout);
    img_0_cols_V_c_U->if_empty_n(img_0_cols_V_c_empty_n);
    img_0_cols_V_c_U->if_read(AXIvideo2Mat_U0_img_cols_V_read);
    img_0_data_stream_0_U = new fifo_w8_d2_A("img_0_data_stream_0_U");
    img_0_data_stream_0_U->clk(ap_clk);
    img_0_data_stream_0_U->reset(ap_rst_n_inv);
    img_0_data_stream_0_U->if_read_ce(ap_var_for_const0);
    img_0_data_stream_0_U->if_write_ce(ap_var_for_const0);
    img_0_data_stream_0_U->if_din(AXIvideo2Mat_U0_img_data_stream_0_V_din);
    img_0_data_stream_0_U->if_full_n(img_0_data_stream_0_full_n);
    img_0_data_stream_0_U->if_write(AXIvideo2Mat_U0_img_data_stream_0_V_write);
    img_0_data_stream_0_U->if_dout(img_0_data_stream_0_dout);
    img_0_data_stream_0_U->if_empty_n(img_0_data_stream_0_empty_n);
    img_0_data_stream_0_U->if_read(CvtColor_U0_p_src_data_stream_0_V_read);
    img_0_data_stream_1_U = new fifo_w8_d2_A("img_0_data_stream_1_U");
    img_0_data_stream_1_U->clk(ap_clk);
    img_0_data_stream_1_U->reset(ap_rst_n_inv);
    img_0_data_stream_1_U->if_read_ce(ap_var_for_const0);
    img_0_data_stream_1_U->if_write_ce(ap_var_for_const0);
    img_0_data_stream_1_U->if_din(AXIvideo2Mat_U0_img_data_stream_1_V_din);
    img_0_data_stream_1_U->if_full_n(img_0_data_stream_1_full_n);
    img_0_data_stream_1_U->if_write(AXIvideo2Mat_U0_img_data_stream_1_V_write);
    img_0_data_stream_1_U->if_dout(img_0_data_stream_1_dout);
    img_0_data_stream_1_U->if_empty_n(img_0_data_stream_1_empty_n);
    img_0_data_stream_1_U->if_read(CvtColor_U0_p_src_data_stream_1_V_read);
    img_0_data_stream_2_U = new fifo_w8_d2_A("img_0_data_stream_2_U");
    img_0_data_stream_2_U->clk(ap_clk);
    img_0_data_stream_2_U->reset(ap_rst_n_inv);
    img_0_data_stream_2_U->if_read_ce(ap_var_for_const0);
    img_0_data_stream_2_U->if_write_ce(ap_var_for_const0);
    img_0_data_stream_2_U->if_din(AXIvideo2Mat_U0_img_data_stream_2_V_din);
    img_0_data_stream_2_U->if_full_n(img_0_data_stream_2_full_n);
    img_0_data_stream_2_U->if_write(AXIvideo2Mat_U0_img_data_stream_2_V_write);
    img_0_data_stream_2_U->if_dout(img_0_data_stream_2_dout);
    img_0_data_stream_2_U->if_empty_n(img_0_data_stream_2_empty_n);
    img_0_data_stream_2_U->if_read(CvtColor_U0_p_src_data_stream_2_V_read);
    img_0_rows_V_c8_U = new fifo_w11_d2_A("img_0_rows_V_c8_U");
    img_0_rows_V_c8_U->clk(ap_clk);
    img_0_rows_V_c8_U->reset(ap_rst_n_inv);
    img_0_rows_V_c8_U->if_read_ce(ap_var_for_const0);
    img_0_rows_V_c8_U->if_write_ce(ap_var_for_const0);
    img_0_rows_V_c8_U->if_din(AXIvideo2Mat_U0_img_rows_V_out_din);
    img_0_rows_V_c8_U->if_full_n(img_0_rows_V_c8_full_n);
    img_0_rows_V_c8_U->if_write(AXIvideo2Mat_U0_img_rows_V_out_write);
    img_0_rows_V_c8_U->if_dout(img_0_rows_V_c8_dout);
    img_0_rows_V_c8_U->if_empty_n(img_0_rows_V_c8_empty_n);
    img_0_rows_V_c8_U->if_read(CvtColor_U0_p_src_rows_V_read);
    img_0_cols_V_c9_U = new fifo_w12_d2_A("img_0_cols_V_c9_U");
    img_0_cols_V_c9_U->clk(ap_clk);
    img_0_cols_V_c9_U->reset(ap_rst_n_inv);
    img_0_cols_V_c9_U->if_read_ce(ap_var_for_const0);
    img_0_cols_V_c9_U->if_write_ce(ap_var_for_const0);
    img_0_cols_V_c9_U->if_din(AXIvideo2Mat_U0_img_cols_V_out_din);
    img_0_cols_V_c9_U->if_full_n(img_0_cols_V_c9_full_n);
    img_0_cols_V_c9_U->if_write(AXIvideo2Mat_U0_img_cols_V_out_write);
    img_0_cols_V_c9_U->if_dout(img_0_cols_V_c9_dout);
    img_0_cols_V_c9_U->if_empty_n(img_0_cols_V_c9_empty_n);
    img_0_cols_V_c9_U->if_read(CvtColor_U0_p_src_cols_V_read);
    img_1_data_stream_0_U = new fifo_w8_d2_A("img_1_data_stream_0_U");
    img_1_data_stream_0_U->clk(ap_clk);
    img_1_data_stream_0_U->reset(ap_rst_n_inv);
    img_1_data_stream_0_U->if_read_ce(ap_var_for_const0);
    img_1_data_stream_0_U->if_write_ce(ap_var_for_const0);
    img_1_data_stream_0_U->if_din(CvtColor_U0_p_dst_data_stream_V_din);
    img_1_data_stream_0_U->if_full_n(img_1_data_stream_0_full_n);
    img_1_data_stream_0_U->if_write(CvtColor_U0_p_dst_data_stream_V_write);
    img_1_data_stream_0_U->if_dout(img_1_data_stream_0_dout);
    img_1_data_stream_0_U->if_empty_n(img_1_data_stream_0_empty_n);
    img_1_data_stream_0_U->if_read(Threshold_U0_src_data_stream_V_read);
    img_2_data_stream_0_U = new fifo_w8_d2_A("img_2_data_stream_0_U");
    img_2_data_stream_0_U->clk(ap_clk);
    img_2_data_stream_0_U->reset(ap_rst_n_inv);
    img_2_data_stream_0_U->if_read_ce(ap_var_for_const0);
    img_2_data_stream_0_U->if_write_ce(ap_var_for_const0);
    img_2_data_stream_0_U->if_din(Threshold_U0_dst_data_stream_V_din);
    img_2_data_stream_0_U->if_full_n(img_2_data_stream_0_full_n);
    img_2_data_stream_0_U->if_write(Threshold_U0_dst_data_stream_V_write);
    img_2_data_stream_0_U->if_dout(img_2_data_stream_0_dout);
    img_2_data_stream_0_U->if_empty_n(img_2_data_stream_0_empty_n);
    img_2_data_stream_0_U->if_read(Mat2AXIvideo_U0_img_data_stream_V_read);
    start_for_CvtColoeOg_U = new start_for_CvtColoeOg("start_for_CvtColoeOg_U");
    start_for_CvtColoeOg_U->clk(ap_clk);
    start_for_CvtColoeOg_U->reset(ap_rst_n_inv);
    start_for_CvtColoeOg_U->if_read_ce(ap_var_for_const0);
    start_for_CvtColoeOg_U->if_write_ce(ap_var_for_const0);
    start_for_CvtColoeOg_U->if_din(start_for_CvtColor_U0_din);
    start_for_CvtColoeOg_U->if_full_n(start_for_CvtColor_U0_full_n);
    start_for_CvtColoeOg_U->if_write(AXIvideo2Mat_U0_start_write);
    start_for_CvtColoeOg_U->if_dout(start_for_CvtColor_U0_dout);
    start_for_CvtColoeOg_U->if_empty_n(start_for_CvtColor_U0_empty_n);
    start_for_CvtColoeOg_U->if_read(CvtColor_U0_ap_ready);
    start_for_ThreshofYi_U = new start_for_ThreshofYi("start_for_ThreshofYi_U");
    start_for_ThreshofYi_U->clk(ap_clk);
    start_for_ThreshofYi_U->reset(ap_rst_n_inv);
    start_for_ThreshofYi_U->if_read_ce(ap_var_for_const0);
    start_for_ThreshofYi_U->if_write_ce(ap_var_for_const0);
    start_for_ThreshofYi_U->if_din(start_for_Threshold_U0_din);
    start_for_ThreshofYi_U->if_full_n(start_for_Threshold_U0_full_n);
    start_for_ThreshofYi_U->if_write(CvtColor_U0_start_write);
    start_for_ThreshofYi_U->if_dout(start_for_Threshold_U0_dout);
    start_for_ThreshofYi_U->if_empty_n(start_for_Threshold_U0_empty_n);
    start_for_ThreshofYi_U->if_read(Threshold_U0_ap_ready);
    start_for_Mat2AXIg8j_U = new start_for_Mat2AXIg8j("start_for_Mat2AXIg8j_U");
    start_for_Mat2AXIg8j_U->clk(ap_clk);
    start_for_Mat2AXIg8j_U->reset(ap_rst_n_inv);
    start_for_Mat2AXIg8j_U->if_read_ce(ap_var_for_const0);
    start_for_Mat2AXIg8j_U->if_write_ce(ap_var_for_const0);
    start_for_Mat2AXIg8j_U->if_din(start_for_Mat2AXIvideo_U0_din);
    start_for_Mat2AXIg8j_U->if_full_n(start_for_Mat2AXIvideo_U0_full_n);
    start_for_Mat2AXIg8j_U->if_write(Threshold_U0_start_write);
    start_for_Mat2AXIg8j_U->if_dout(start_for_Mat2AXIvideo_U0_dout);
    start_for_Mat2AXIg8j_U->if_empty_n(start_for_Mat2AXIvideo_U0_empty_n);
    start_for_Mat2AXIg8j_U->if_read(Mat2AXIvideo_U0_ap_ready);

    SC_METHOD(thread_AXIvideo2Mat_U0_ap_continue);

    SC_METHOD(thread_AXIvideo2Mat_U0_ap_start);

    SC_METHOD(thread_Block_proc_U0_ap_continue);

    SC_METHOD(thread_Block_proc_U0_ap_start);

    SC_METHOD(thread_Block_proc_U0_start_full_n);

    SC_METHOD(thread_Block_proc_U0_start_write);

    SC_METHOD(thread_CvtColor_U0_ap_continue);

    SC_METHOD(thread_CvtColor_U0_ap_start);
    sensitive << ( start_for_CvtColor_U0_empty_n );

    SC_METHOD(thread_INPUT_STREAM_TREADY);
    sensitive << ( AXIvideo2Mat_U0_INPUT_STREAM_TREADY );

    SC_METHOD(thread_Mat2AXIvideo_U0_ap_continue);

    SC_METHOD(thread_Mat2AXIvideo_U0_ap_start);
    sensitive << ( start_for_Mat2AXIvideo_U0_empty_n );

    SC_METHOD(thread_Mat2AXIvideo_U0_start_full_n);

    SC_METHOD(thread_Mat2AXIvideo_U0_start_write);

    SC_METHOD(thread_OUTPUT_STREAM_TDATA);
    sensitive << ( Mat2AXIvideo_U0_OUTPUT_STREAM_TDATA );

    SC_METHOD(thread_OUTPUT_STREAM_TDEST);
    sensitive << ( Mat2AXIvideo_U0_OUTPUT_STREAM_TDEST );

    SC_METHOD(thread_OUTPUT_STREAM_TID);
    sensitive << ( Mat2AXIvideo_U0_OUTPUT_STREAM_TID );

    SC_METHOD(thread_OUTPUT_STREAM_TKEEP);
    sensitive << ( Mat2AXIvideo_U0_OUTPUT_STREAM_TKEEP );

    SC_METHOD(thread_OUTPUT_STREAM_TLAST);
    sensitive << ( Mat2AXIvideo_U0_OUTPUT_STREAM_TLAST );

    SC_METHOD(thread_OUTPUT_STREAM_TSTRB);
    sensitive << ( Mat2AXIvideo_U0_OUTPUT_STREAM_TSTRB );

    SC_METHOD(thread_OUTPUT_STREAM_TUSER);
    sensitive << ( Mat2AXIvideo_U0_OUTPUT_STREAM_TUSER );

    SC_METHOD(thread_OUTPUT_STREAM_TVALID);
    sensitive << ( Mat2AXIvideo_U0_OUTPUT_STREAM_TVALID );

    SC_METHOD(thread_Threshold_U0_ap_continue);

    SC_METHOD(thread_Threshold_U0_ap_start);
    sensitive << ( start_for_Threshold_U0_empty_n );

    SC_METHOD(thread_ap_rst_n_inv);
    sensitive << ( ap_rst_n );

    SC_METHOD(thread_ap_sync_continue);

    SC_METHOD(thread_start_for_CvtColor_U0_din);

    SC_METHOD(thread_start_for_Mat2AXIvideo_U0_din);

    SC_METHOD(thread_start_for_Threshold_U0_din);

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    SC_THREAD(thread_ap_var_for_const0);

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "image_filter_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, INPUT_STREAM_TDATA, "(port)INPUT_STREAM_TDATA");
    sc_trace(mVcdFile, INPUT_STREAM_TKEEP, "(port)INPUT_STREAM_TKEEP");
    sc_trace(mVcdFile, INPUT_STREAM_TSTRB, "(port)INPUT_STREAM_TSTRB");
    sc_trace(mVcdFile, INPUT_STREAM_TUSER, "(port)INPUT_STREAM_TUSER");
    sc_trace(mVcdFile, INPUT_STREAM_TLAST, "(port)INPUT_STREAM_TLAST");
    sc_trace(mVcdFile, INPUT_STREAM_TID, "(port)INPUT_STREAM_TID");
    sc_trace(mVcdFile, INPUT_STREAM_TDEST, "(port)INPUT_STREAM_TDEST");
    sc_trace(mVcdFile, OUTPUT_STREAM_TDATA, "(port)OUTPUT_STREAM_TDATA");
    sc_trace(mVcdFile, OUTPUT_STREAM_TKEEP, "(port)OUTPUT_STREAM_TKEEP");
    sc_trace(mVcdFile, OUTPUT_STREAM_TSTRB, "(port)OUTPUT_STREAM_TSTRB");
    sc_trace(mVcdFile, OUTPUT_STREAM_TUSER, "(port)OUTPUT_STREAM_TUSER");
    sc_trace(mVcdFile, OUTPUT_STREAM_TLAST, "(port)OUTPUT_STREAM_TLAST");
    sc_trace(mVcdFile, OUTPUT_STREAM_TID, "(port)OUTPUT_STREAM_TID");
    sc_trace(mVcdFile, OUTPUT_STREAM_TDEST, "(port)OUTPUT_STREAM_TDEST");
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst_n, "(port)ap_rst_n");
    sc_trace(mVcdFile, INPUT_STREAM_TVALID, "(port)INPUT_STREAM_TVALID");
    sc_trace(mVcdFile, INPUT_STREAM_TREADY, "(port)INPUT_STREAM_TREADY");
    sc_trace(mVcdFile, OUTPUT_STREAM_TVALID, "(port)OUTPUT_STREAM_TVALID");
    sc_trace(mVcdFile, OUTPUT_STREAM_TREADY, "(port)OUTPUT_STREAM_TREADY");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_rst_n_inv, "ap_rst_n_inv");
    sc_trace(mVcdFile, Block_proc_U0_ap_start, "Block_proc_U0_ap_start");
    sc_trace(mVcdFile, Block_proc_U0_ap_done, "Block_proc_U0_ap_done");
    sc_trace(mVcdFile, Block_proc_U0_ap_continue, "Block_proc_U0_ap_continue");
    sc_trace(mVcdFile, Block_proc_U0_ap_idle, "Block_proc_U0_ap_idle");
    sc_trace(mVcdFile, Block_proc_U0_ap_ready, "Block_proc_U0_ap_ready");
    sc_trace(mVcdFile, Block_proc_U0_img_0_rows_V_out_din, "Block_proc_U0_img_0_rows_V_out_din");
    sc_trace(mVcdFile, Block_proc_U0_img_0_rows_V_out_write, "Block_proc_U0_img_0_rows_V_out_write");
    sc_trace(mVcdFile, Block_proc_U0_img_0_cols_V_out_din, "Block_proc_U0_img_0_cols_V_out_din");
    sc_trace(mVcdFile, Block_proc_U0_img_0_cols_V_out_write, "Block_proc_U0_img_0_cols_V_out_write");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_ap_start, "AXIvideo2Mat_U0_ap_start");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_ap_done, "AXIvideo2Mat_U0_ap_done");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_ap_continue, "AXIvideo2Mat_U0_ap_continue");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_ap_idle, "AXIvideo2Mat_U0_ap_idle");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_ap_ready, "AXIvideo2Mat_U0_ap_ready");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_start_out, "AXIvideo2Mat_U0_start_out");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_start_write, "AXIvideo2Mat_U0_start_write");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_INPUT_STREAM_TREADY, "AXIvideo2Mat_U0_INPUT_STREAM_TREADY");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_img_rows_V_read, "AXIvideo2Mat_U0_img_rows_V_read");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_img_cols_V_read, "AXIvideo2Mat_U0_img_cols_V_read");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_img_data_stream_0_V_din, "AXIvideo2Mat_U0_img_data_stream_0_V_din");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_img_data_stream_0_V_write, "AXIvideo2Mat_U0_img_data_stream_0_V_write");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_img_data_stream_1_V_din, "AXIvideo2Mat_U0_img_data_stream_1_V_din");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_img_data_stream_1_V_write, "AXIvideo2Mat_U0_img_data_stream_1_V_write");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_img_data_stream_2_V_din, "AXIvideo2Mat_U0_img_data_stream_2_V_din");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_img_data_stream_2_V_write, "AXIvideo2Mat_U0_img_data_stream_2_V_write");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_img_rows_V_out_din, "AXIvideo2Mat_U0_img_rows_V_out_din");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_img_rows_V_out_write, "AXIvideo2Mat_U0_img_rows_V_out_write");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_img_cols_V_out_din, "AXIvideo2Mat_U0_img_cols_V_out_din");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_img_cols_V_out_write, "AXIvideo2Mat_U0_img_cols_V_out_write");
    sc_trace(mVcdFile, CvtColor_U0_ap_start, "CvtColor_U0_ap_start");
    sc_trace(mVcdFile, CvtColor_U0_ap_done, "CvtColor_U0_ap_done");
    sc_trace(mVcdFile, CvtColor_U0_ap_continue, "CvtColor_U0_ap_continue");
    sc_trace(mVcdFile, CvtColor_U0_ap_idle, "CvtColor_U0_ap_idle");
    sc_trace(mVcdFile, CvtColor_U0_ap_ready, "CvtColor_U0_ap_ready");
    sc_trace(mVcdFile, CvtColor_U0_start_out, "CvtColor_U0_start_out");
    sc_trace(mVcdFile, CvtColor_U0_start_write, "CvtColor_U0_start_write");
    sc_trace(mVcdFile, CvtColor_U0_p_src_rows_V_read, "CvtColor_U0_p_src_rows_V_read");
    sc_trace(mVcdFile, CvtColor_U0_p_src_cols_V_read, "CvtColor_U0_p_src_cols_V_read");
    sc_trace(mVcdFile, CvtColor_U0_p_src_data_stream_0_V_read, "CvtColor_U0_p_src_data_stream_0_V_read");
    sc_trace(mVcdFile, CvtColor_U0_p_src_data_stream_1_V_read, "CvtColor_U0_p_src_data_stream_1_V_read");
    sc_trace(mVcdFile, CvtColor_U0_p_src_data_stream_2_V_read, "CvtColor_U0_p_src_data_stream_2_V_read");
    sc_trace(mVcdFile, CvtColor_U0_p_dst_data_stream_V_din, "CvtColor_U0_p_dst_data_stream_V_din");
    sc_trace(mVcdFile, CvtColor_U0_p_dst_data_stream_V_write, "CvtColor_U0_p_dst_data_stream_V_write");
    sc_trace(mVcdFile, Threshold_U0_ap_start, "Threshold_U0_ap_start");
    sc_trace(mVcdFile, Threshold_U0_ap_done, "Threshold_U0_ap_done");
    sc_trace(mVcdFile, Threshold_U0_ap_continue, "Threshold_U0_ap_continue");
    sc_trace(mVcdFile, Threshold_U0_ap_idle, "Threshold_U0_ap_idle");
    sc_trace(mVcdFile, Threshold_U0_ap_ready, "Threshold_U0_ap_ready");
    sc_trace(mVcdFile, Threshold_U0_start_out, "Threshold_U0_start_out");
    sc_trace(mVcdFile, Threshold_U0_start_write, "Threshold_U0_start_write");
    sc_trace(mVcdFile, Threshold_U0_src_data_stream_V_read, "Threshold_U0_src_data_stream_V_read");
    sc_trace(mVcdFile, Threshold_U0_dst_data_stream_V_din, "Threshold_U0_dst_data_stream_V_din");
    sc_trace(mVcdFile, Threshold_U0_dst_data_stream_V_write, "Threshold_U0_dst_data_stream_V_write");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_ap_start, "Mat2AXIvideo_U0_ap_start");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_ap_done, "Mat2AXIvideo_U0_ap_done");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_ap_continue, "Mat2AXIvideo_U0_ap_continue");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_ap_idle, "Mat2AXIvideo_U0_ap_idle");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_ap_ready, "Mat2AXIvideo_U0_ap_ready");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_img_data_stream_V_read, "Mat2AXIvideo_U0_img_data_stream_V_read");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_OUTPUT_STREAM_TDATA, "Mat2AXIvideo_U0_OUTPUT_STREAM_TDATA");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_OUTPUT_STREAM_TVALID, "Mat2AXIvideo_U0_OUTPUT_STREAM_TVALID");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_OUTPUT_STREAM_TKEEP, "Mat2AXIvideo_U0_OUTPUT_STREAM_TKEEP");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_OUTPUT_STREAM_TSTRB, "Mat2AXIvideo_U0_OUTPUT_STREAM_TSTRB");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_OUTPUT_STREAM_TUSER, "Mat2AXIvideo_U0_OUTPUT_STREAM_TUSER");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_OUTPUT_STREAM_TLAST, "Mat2AXIvideo_U0_OUTPUT_STREAM_TLAST");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_OUTPUT_STREAM_TID, "Mat2AXIvideo_U0_OUTPUT_STREAM_TID");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_OUTPUT_STREAM_TDEST, "Mat2AXIvideo_U0_OUTPUT_STREAM_TDEST");
    sc_trace(mVcdFile, ap_sync_continue, "ap_sync_continue");
    sc_trace(mVcdFile, img_0_rows_V_c_full_n, "img_0_rows_V_c_full_n");
    sc_trace(mVcdFile, img_0_rows_V_c_dout, "img_0_rows_V_c_dout");
    sc_trace(mVcdFile, img_0_rows_V_c_empty_n, "img_0_rows_V_c_empty_n");
    sc_trace(mVcdFile, img_0_cols_V_c_full_n, "img_0_cols_V_c_full_n");
    sc_trace(mVcdFile, img_0_cols_V_c_dout, "img_0_cols_V_c_dout");
    sc_trace(mVcdFile, img_0_cols_V_c_empty_n, "img_0_cols_V_c_empty_n");
    sc_trace(mVcdFile, img_0_data_stream_0_full_n, "img_0_data_stream_0_full_n");
    sc_trace(mVcdFile, img_0_data_stream_0_dout, "img_0_data_stream_0_dout");
    sc_trace(mVcdFile, img_0_data_stream_0_empty_n, "img_0_data_stream_0_empty_n");
    sc_trace(mVcdFile, img_0_data_stream_1_full_n, "img_0_data_stream_1_full_n");
    sc_trace(mVcdFile, img_0_data_stream_1_dout, "img_0_data_stream_1_dout");
    sc_trace(mVcdFile, img_0_data_stream_1_empty_n, "img_0_data_stream_1_empty_n");
    sc_trace(mVcdFile, img_0_data_stream_2_full_n, "img_0_data_stream_2_full_n");
    sc_trace(mVcdFile, img_0_data_stream_2_dout, "img_0_data_stream_2_dout");
    sc_trace(mVcdFile, img_0_data_stream_2_empty_n, "img_0_data_stream_2_empty_n");
    sc_trace(mVcdFile, img_0_rows_V_c8_full_n, "img_0_rows_V_c8_full_n");
    sc_trace(mVcdFile, img_0_rows_V_c8_dout, "img_0_rows_V_c8_dout");
    sc_trace(mVcdFile, img_0_rows_V_c8_empty_n, "img_0_rows_V_c8_empty_n");
    sc_trace(mVcdFile, img_0_cols_V_c9_full_n, "img_0_cols_V_c9_full_n");
    sc_trace(mVcdFile, img_0_cols_V_c9_dout, "img_0_cols_V_c9_dout");
    sc_trace(mVcdFile, img_0_cols_V_c9_empty_n, "img_0_cols_V_c9_empty_n");
    sc_trace(mVcdFile, img_1_data_stream_0_full_n, "img_1_data_stream_0_full_n");
    sc_trace(mVcdFile, img_1_data_stream_0_dout, "img_1_data_stream_0_dout");
    sc_trace(mVcdFile, img_1_data_stream_0_empty_n, "img_1_data_stream_0_empty_n");
    sc_trace(mVcdFile, img_2_data_stream_0_full_n, "img_2_data_stream_0_full_n");
    sc_trace(mVcdFile, img_2_data_stream_0_dout, "img_2_data_stream_0_dout");
    sc_trace(mVcdFile, img_2_data_stream_0_empty_n, "img_2_data_stream_0_empty_n");
    sc_trace(mVcdFile, Block_proc_U0_start_full_n, "Block_proc_U0_start_full_n");
    sc_trace(mVcdFile, Block_proc_U0_start_write, "Block_proc_U0_start_write");
    sc_trace(mVcdFile, start_for_CvtColor_U0_din, "start_for_CvtColor_U0_din");
    sc_trace(mVcdFile, start_for_CvtColor_U0_full_n, "start_for_CvtColor_U0_full_n");
    sc_trace(mVcdFile, start_for_CvtColor_U0_dout, "start_for_CvtColor_U0_dout");
    sc_trace(mVcdFile, start_for_CvtColor_U0_empty_n, "start_for_CvtColor_U0_empty_n");
    sc_trace(mVcdFile, start_for_Threshold_U0_din, "start_for_Threshold_U0_din");
    sc_trace(mVcdFile, start_for_Threshold_U0_full_n, "start_for_Threshold_U0_full_n");
    sc_trace(mVcdFile, start_for_Threshold_U0_dout, "start_for_Threshold_U0_dout");
    sc_trace(mVcdFile, start_for_Threshold_U0_empty_n, "start_for_Threshold_U0_empty_n");
    sc_trace(mVcdFile, start_for_Mat2AXIvideo_U0_din, "start_for_Mat2AXIvideo_U0_din");
    sc_trace(mVcdFile, start_for_Mat2AXIvideo_U0_full_n, "start_for_Mat2AXIvideo_U0_full_n");
    sc_trace(mVcdFile, start_for_Mat2AXIvideo_U0_dout, "start_for_Mat2AXIvideo_U0_dout");
    sc_trace(mVcdFile, start_for_Mat2AXIvideo_U0_empty_n, "start_for_Mat2AXIvideo_U0_empty_n");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_start_full_n, "Mat2AXIvideo_U0_start_full_n");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_start_write, "Mat2AXIvideo_U0_start_write");
#endif

    }
    mHdltvinHandle.open("image_filter.hdltvin.dat");
    mHdltvoutHandle.open("image_filter.hdltvout.dat");
}

image_filter::~image_filter() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete Block_proc_U0;
    delete AXIvideo2Mat_U0;
    delete CvtColor_U0;
    delete Threshold_U0;
    delete Mat2AXIvideo_U0;
    delete img_0_rows_V_c_U;
    delete img_0_cols_V_c_U;
    delete img_0_data_stream_0_U;
    delete img_0_data_stream_1_U;
    delete img_0_data_stream_2_U;
    delete img_0_rows_V_c8_U;
    delete img_0_cols_V_c9_U;
    delete img_1_data_stream_0_U;
    delete img_2_data_stream_0_U;
    delete start_for_CvtColoeOg_U;
    delete start_for_ThreshofYi_U;
    delete start_for_Mat2AXIg8j_U;
}

void image_filter::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void image_filter::thread_AXIvideo2Mat_U0_ap_continue() {
    AXIvideo2Mat_U0_ap_continue = ap_const_logic_1;
}

void image_filter::thread_AXIvideo2Mat_U0_ap_start() {
    AXIvideo2Mat_U0_ap_start = ap_const_logic_1;
}

void image_filter::thread_Block_proc_U0_ap_continue() {
    Block_proc_U0_ap_continue = ap_const_logic_1;
}

void image_filter::thread_Block_proc_U0_ap_start() {
    Block_proc_U0_ap_start = ap_const_logic_1;
}

void image_filter::thread_Block_proc_U0_start_full_n() {
    Block_proc_U0_start_full_n = ap_const_logic_1;
}

void image_filter::thread_Block_proc_U0_start_write() {
    Block_proc_U0_start_write = ap_const_logic_0;
}

void image_filter::thread_CvtColor_U0_ap_continue() {
    CvtColor_U0_ap_continue = ap_const_logic_1;
}

void image_filter::thread_CvtColor_U0_ap_start() {
    CvtColor_U0_ap_start = start_for_CvtColor_U0_empty_n.read();
}

void image_filter::thread_INPUT_STREAM_TREADY() {
    INPUT_STREAM_TREADY = AXIvideo2Mat_U0_INPUT_STREAM_TREADY.read();
}

void image_filter::thread_Mat2AXIvideo_U0_ap_continue() {
    Mat2AXIvideo_U0_ap_continue = ap_const_logic_1;
}

void image_filter::thread_Mat2AXIvideo_U0_ap_start() {
    Mat2AXIvideo_U0_ap_start = start_for_Mat2AXIvideo_U0_empty_n.read();
}

void image_filter::thread_Mat2AXIvideo_U0_start_full_n() {
    Mat2AXIvideo_U0_start_full_n = ap_const_logic_1;
}

void image_filter::thread_Mat2AXIvideo_U0_start_write() {
    Mat2AXIvideo_U0_start_write = ap_const_logic_0;
}

void image_filter::thread_OUTPUT_STREAM_TDATA() {
    OUTPUT_STREAM_TDATA = Mat2AXIvideo_U0_OUTPUT_STREAM_TDATA.read();
}

void image_filter::thread_OUTPUT_STREAM_TDEST() {
    OUTPUT_STREAM_TDEST = Mat2AXIvideo_U0_OUTPUT_STREAM_TDEST.read();
}

void image_filter::thread_OUTPUT_STREAM_TID() {
    OUTPUT_STREAM_TID = Mat2AXIvideo_U0_OUTPUT_STREAM_TID.read();
}

void image_filter::thread_OUTPUT_STREAM_TKEEP() {
    OUTPUT_STREAM_TKEEP = Mat2AXIvideo_U0_OUTPUT_STREAM_TKEEP.read();
}

void image_filter::thread_OUTPUT_STREAM_TLAST() {
    OUTPUT_STREAM_TLAST = Mat2AXIvideo_U0_OUTPUT_STREAM_TLAST.read();
}

void image_filter::thread_OUTPUT_STREAM_TSTRB() {
    OUTPUT_STREAM_TSTRB = Mat2AXIvideo_U0_OUTPUT_STREAM_TSTRB.read();
}

void image_filter::thread_OUTPUT_STREAM_TUSER() {
    OUTPUT_STREAM_TUSER = Mat2AXIvideo_U0_OUTPUT_STREAM_TUSER.read();
}

void image_filter::thread_OUTPUT_STREAM_TVALID() {
    OUTPUT_STREAM_TVALID = Mat2AXIvideo_U0_OUTPUT_STREAM_TVALID.read();
}

void image_filter::thread_Threshold_U0_ap_continue() {
    Threshold_U0_ap_continue = ap_const_logic_1;
}

void image_filter::thread_Threshold_U0_ap_start() {
    Threshold_U0_ap_start = start_for_Threshold_U0_empty_n.read();
}

void image_filter::thread_ap_rst_n_inv() {
    ap_rst_n_inv =  (sc_logic) (~ap_rst_n.read());
}

void image_filter::thread_ap_sync_continue() {
    ap_sync_continue = ap_const_logic_0;
}

void image_filter::thread_start_for_CvtColor_U0_din() {
    start_for_CvtColor_U0_din =  (sc_lv<1>) (ap_const_logic_1);
}

void image_filter::thread_start_for_Mat2AXIvideo_U0_din() {
    start_for_Mat2AXIvideo_U0_din =  (sc_lv<1>) (ap_const_logic_1);
}

void image_filter::thread_start_for_Threshold_U0_din() {
    start_for_Threshold_U0_din =  (sc_lv<1>) (ap_const_logic_1);
}

void image_filter::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"INPUT_STREAM_TDATA\" :  \"" << INPUT_STREAM_TDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"INPUT_STREAM_TKEEP\" :  \"" << INPUT_STREAM_TKEEP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"INPUT_STREAM_TSTRB\" :  \"" << INPUT_STREAM_TSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"INPUT_STREAM_TUSER\" :  \"" << INPUT_STREAM_TUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"INPUT_STREAM_TLAST\" :  \"" << INPUT_STREAM_TLAST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"INPUT_STREAM_TID\" :  \"" << INPUT_STREAM_TID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"INPUT_STREAM_TDEST\" :  \"" << INPUT_STREAM_TDEST.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"OUTPUT_STREAM_TDATA\" :  \"" << OUTPUT_STREAM_TDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"OUTPUT_STREAM_TKEEP\" :  \"" << OUTPUT_STREAM_TKEEP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"OUTPUT_STREAM_TSTRB\" :  \"" << OUTPUT_STREAM_TSTRB.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"OUTPUT_STREAM_TUSER\" :  \"" << OUTPUT_STREAM_TUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"OUTPUT_STREAM_TLAST\" :  \"" << OUTPUT_STREAM_TLAST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"OUTPUT_STREAM_TID\" :  \"" << OUTPUT_STREAM_TID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"OUTPUT_STREAM_TDEST\" :  \"" << OUTPUT_STREAM_TDEST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"INPUT_STREAM_TVALID\" :  \"" << INPUT_STREAM_TVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"INPUT_STREAM_TREADY\" :  \"" << INPUT_STREAM_TREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"OUTPUT_STREAM_TVALID\" :  \"" << OUTPUT_STREAM_TVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"OUTPUT_STREAM_TREADY\" :  \"" << OUTPUT_STREAM_TREADY.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}


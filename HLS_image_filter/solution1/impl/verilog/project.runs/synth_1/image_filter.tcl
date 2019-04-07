# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7z020clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/melik/eclipse-workspace/threshold1/solution1/impl/verilog/project.cache/wt [current_project]
set_property parent.project_path C:/Users/melik/eclipse-workspace/threshold1/solution1/impl/verilog/project.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  C:/Users/melik/eclipse-workspace/threshold1/solution1/impl/verilog/AXIvideo2Mat.v
  C:/Users/melik/eclipse-workspace/threshold1/solution1/impl/verilog/Block_proc.v
  C:/Users/melik/eclipse-workspace/threshold1/solution1/impl/verilog/CvtColor.v
  C:/Users/melik/eclipse-workspace/threshold1/solution1/impl/verilog/Mat2AXIvideo.v
  C:/Users/melik/eclipse-workspace/threshold1/solution1/impl/verilog/Threshold.v
  C:/Users/melik/eclipse-workspace/threshold1/solution1/impl/verilog/fifo_w11_d2_A.v
  C:/Users/melik/eclipse-workspace/threshold1/solution1/impl/verilog/fifo_w12_d2_A.v
  C:/Users/melik/eclipse-workspace/threshold1/solution1/impl/verilog/fifo_w8_d2_A.v
  C:/Users/melik/eclipse-workspace/threshold1/solution1/impl/verilog/image_filter.v
  C:/Users/melik/eclipse-workspace/threshold1/solution1/impl/verilog/image_filter_mac_cud.v
  C:/Users/melik/eclipse-workspace/threshold1/solution1/impl/verilog/image_filter_mac_dEe.v
  C:/Users/melik/eclipse-workspace/threshold1/solution1/impl/verilog/image_filter_mul_bkb.v
  C:/Users/melik/eclipse-workspace/threshold1/solution1/impl/verilog/start_for_CvtColoeOg.v
  C:/Users/melik/eclipse-workspace/threshold1/solution1/impl/verilog/start_for_Mat2AXIg8j.v
  C:/Users/melik/eclipse-workspace/threshold1/solution1/impl/verilog/start_for_ThreshofYi.v
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/melik/eclipse-workspace/threshold1/solution1/impl/verilog/image_filter.xdc
set_property used_in_implementation false [get_files C:/Users/melik/eclipse-workspace/threshold1/solution1/impl/verilog/image_filter.xdc]

set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top image_filter -part xc7z020clg400-1 -directive sdx_optimization_effort_high -no_iobuf -mode out_of_context


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef image_filter.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file image_filter_utilization_synth.rpt -pb image_filter_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
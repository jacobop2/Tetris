# 
# Synthesis run script generated by Vivado
# 

namespace eval rt {
    variable rc
}
set rt::rc [catch {
  uplevel #0 {
    set ::env(BUILTIN_SYNTH) true
    source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
    rt::HARTNDb_resetJobStats
    rt::HARTNDb_resetSystemStats
    rt::HARTNDb_startSystemStats
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    rt::set_parameter enableParallelHelperSpawn true
    set ::env(RT_TMP) "C:/Users/mered/School/final_project_ece385/final_project/.Xil/Vivado-32936-Meredith-XPS/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file delete -force $::env(RT_TMP)
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    rt::set_parameter datapathDensePacking false
    set rt::partid xc7s50csga324-1
     file delete -force synth_hints.os

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common.tcl
    set rt::defaultWorkLibName xil_defaultlib

    set rt::useElabCache false
    if {$rt::useElabCache == false} {
      rt::read_verilog -sv -include {
    c:/Users/mered/School/final_project_ece385/final_project/ece385_6.1.gen/sources_1/bd/mb_block/ipshared/ec67/hdl
    c:/Users/mered/School/final_project_ece385/final_project/ece385_6.1.gen/sources_1/bd/mb_block/ipshared/7698
    C:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.srcs/sources_1/ip/hdmi_tx_0
    C:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.srcs/sources_1/ip/clk_wiz_0
    C:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.srcs/sources_1/ip/blk_mem_gen_0
    C:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.srcs/sources_1/ip/tetris_logo
    c:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.srcs/sources_1/ip/tetris_I_rom
    c:/Users/mered/School/final_project_ece385/final_project/ece385_6.1.gen/sources_1/bd/mb_block/ip/mb_block_axi_quad_spi_0_0/netlist
  } {
      C:/Users/mered/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv
      C:/Users/mered/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv
      C:/Users/mered/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv
    }
      rt::read_verilog -sv -include {
    c:/Users/mered/School/final_project_ece385/final_project/ece385_6.1.gen/sources_1/bd/mb_block/ipshared/ec67/hdl
    c:/Users/mered/School/final_project_ece385/final_project/ece385_6.1.gen/sources_1/bd/mb_block/ipshared/7698
    C:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.srcs/sources_1/ip/hdmi_tx_0
    C:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.srcs/sources_1/ip/clk_wiz_0
    C:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.srcs/sources_1/ip/blk_mem_gen_0
    C:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.srcs/sources_1/ip/tetris_logo
    c:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.srcs/sources_1/ip/tetris_I_rom
    c:/Users/mered/School/final_project_ece385/final_project/ece385_6.1.gen/sources_1/bd/mb_block/ip/mb_block_axi_quad_spi_0_0/netlist
  } {
      C:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.srcs/sources_1/imports/design_source/VGA_controller.sv
      C:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.srcs/sources_1/new/divider.sv
      C:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.srcs/sources_1/imports/fpb_1/fpb_1_example.sv
      C:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.srcs/sources_1/imports/fpb_1/fpb_1_palette.sv
      C:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.srcs/sources_1/imports/design_source/hex.sv
      C:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.srcs/sources_1/new/tetris_I.sv
      C:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.srcs/sources_1/imports/tetris_I/tetris_I_palette.sv
      C:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.srcs/sources_1/imports/tetris_logo/tetris_logo_palette.sv
      C:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.srcs/sources_1/imports/design_source/mb_usb_hdmi_top.sv
    }
      rt::read_verilog -include {
    c:/Users/mered/School/final_project_ece385/final_project/ece385_6.1.gen/sources_1/bd/mb_block/ipshared/ec67/hdl
    c:/Users/mered/School/final_project_ece385/final_project/ece385_6.1.gen/sources_1/bd/mb_block/ipshared/7698
    C:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.srcs/sources_1/ip/hdmi_tx_0
    C:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.srcs/sources_1/ip/clk_wiz_0
    C:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.srcs/sources_1/ip/blk_mem_gen_0
    C:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.srcs/sources_1/ip/tetris_logo
    c:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.srcs/sources_1/ip/tetris_I_rom
    c:/Users/mered/School/final_project_ece385/final_project/ece385_6.1.gen/sources_1/bd/mb_block/ip/mb_block_axi_quad_spi_0_0/netlist
  } {
      C:/Users/mered/School/final_project_ece385/final_project/.Xil/Vivado-32936-Meredith-XPS/realtime/mb_block_microblaze_0_0_stub.v
      C:/Users/mered/School/final_project_ece385/final_project/.Xil/Vivado-32936-Meredith-XPS/realtime/mb_block_dlmb_v10_0_stub.v
      C:/Users/mered/School/final_project_ece385/final_project/.Xil/Vivado-32936-Meredith-XPS/realtime/mb_block_ilmb_v10_0_stub.v
      C:/Users/mered/School/final_project_ece385/final_project/.Xil/Vivado-32936-Meredith-XPS/realtime/mb_block_dlmb_bram_if_cntlr_0_stub.v
      C:/Users/mered/School/final_project_ece385/final_project/.Xil/Vivado-32936-Meredith-XPS/realtime/mb_block_ilmb_bram_if_cntlr_0_stub.v
      C:/Users/mered/School/final_project_ece385/final_project/.Xil/Vivado-32936-Meredith-XPS/realtime/mb_block_lmb_bram_0_stub.v
      C:/Users/mered/School/final_project_ece385/final_project/.Xil/Vivado-32936-Meredith-XPS/realtime/mb_block_xbar_0_stub.v
      C:/Users/mered/School/final_project_ece385/final_project/.Xil/Vivado-32936-Meredith-XPS/realtime/mb_block_microblaze_0_axi_intc_0_stub.v
      C:/Users/mered/School/final_project_ece385/final_project/.Xil/Vivado-32936-Meredith-XPS/realtime/mb_block_mdm_1_0_stub.v
      C:/Users/mered/School/final_project_ece385/final_project/.Xil/Vivado-32936-Meredith-XPS/realtime/mb_block_clk_wiz_1_0_stub.v
      C:/Users/mered/School/final_project_ece385/final_project/.Xil/Vivado-32936-Meredith-XPS/realtime/mb_block_rst_clk_wiz_1_100M_0_stub.v
      C:/Users/mered/School/final_project_ece385/final_project/.Xil/Vivado-32936-Meredith-XPS/realtime/mb_block_axi_uartlite_0_0_stub.v
      C:/Users/mered/School/final_project_ece385/final_project/.Xil/Vivado-32936-Meredith-XPS/realtime/mb_block_axi_gpio_0_1_stub.v
      C:/Users/mered/School/final_project_ece385/final_project/.Xil/Vivado-32936-Meredith-XPS/realtime/mb_block_axi_gpio_1_0_stub.v
      C:/Users/mered/School/final_project_ece385/final_project/.Xil/Vivado-32936-Meredith-XPS/realtime/mb_block_axi_gpio_2_0_stub.v
      C:/Users/mered/School/final_project_ece385/final_project/.Xil/Vivado-32936-Meredith-XPS/realtime/mb_block_axi_timer_0_0_stub.v
      C:/Users/mered/School/final_project_ece385/final_project/.Xil/Vivado-32936-Meredith-XPS/realtime/mb_block_axi_quad_spi_0_0_stub.v
      C:/Users/mered/School/final_project_ece385/final_project/.Xil/Vivado-32936-Meredith-XPS/realtime/hdmi_tx_0_stub.v
      C:/Users/mered/School/final_project_ece385/final_project/.Xil/Vivado-32936-Meredith-XPS/realtime/clk_wiz_0_stub.v
      C:/Users/mered/School/final_project_ece385/final_project/.Xil/Vivado-32936-Meredith-XPS/realtime/blk_mem_gen_0_stub.v
      C:/Users/mered/School/final_project_ece385/final_project/.Xil/Vivado-32936-Meredith-XPS/realtime/tetris_logo_stub.v
      C:/Users/mered/School/final_project_ece385/final_project/.Xil/Vivado-32936-Meredith-XPS/realtime/tetris_I_rom_stub.v
      c:/Users/mered/School/final_project_ece385/final_project/ece385_6.1.gen/sources_1/bd/mb_block/synth/mb_block.v
    }
      rt::read_verilog -include {
    c:/Users/mered/School/final_project_ece385/final_project/ece385_6.1.gen/sources_1/bd/mb_block/ipshared/ec67/hdl
    c:/Users/mered/School/final_project_ece385/final_project/ece385_6.1.gen/sources_1/bd/mb_block/ipshared/7698
    C:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.srcs/sources_1/ip/hdmi_tx_0
    C:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.srcs/sources_1/ip/clk_wiz_0
    C:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.srcs/sources_1/ip/blk_mem_gen_0
    C:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.srcs/sources_1/ip/tetris_logo
    c:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.srcs/sources_1/ip/tetris_I_rom
    c:/Users/mered/School/final_project_ece385/final_project/ece385_6.1.gen/sources_1/bd/mb_block/ip/mb_block_axi_quad_spi_0_0/netlist
  } {
      c:/Users/mered/School/final_project_ece385/final_project/ece385_6.1.gen/sources_1/bd/mb_block/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v
      c:/Users/mered/School/final_project_ece385/final_project/ece385_6.1.gen/sources_1/bd/mb_block/ip/mb_block_xlconcat_0_0/synth/mb_block_xlconcat_0_0.v
    }
      rt::read_vhdl -lib xpm C:/Users/mered/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification false
    set rt::top mb_usb_hdmi_top
    rt::set_parameter enableIncremental true
    rt::set_parameter markDebugPreservationLevel "enable"
    set rt::reportTiming false
    rt::set_parameter elaborateOnly true
    rt::set_parameter elaborateRtl true
    rt::set_parameter eliminateRedundantBitOperator false
    rt::set_parameter dataflowBusHighlighting false
    rt::set_parameter generateDataflowBusNetlist false
    rt::set_parameter dataFlowViewInElab false
    rt::set_parameter busViewFixBrokenConnections false
    rt::set_parameter elaborateRtlOnlyFlow true
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter merge_flipflops true
    rt::set_parameter srlDepthThreshold 3
    rt::set_parameter rstSrlDepthThreshold 4
# MODE: 
    rt::set_parameter webTalkPath {}
    rt::set_parameter synthDebugLog false
    rt::set_parameter printModuleName false
    rt::set_parameter enableSplitFlowPath "C:/Users/mered/School/final_project_ece385/final_project/.Xil/Vivado-32936-Meredith-XPS/"
    set ok_to_delete_rt_tmp true 
    if { [rt::get_parameter parallelDebug] } { 
       set ok_to_delete_rt_tmp false 
    } 
    if {$rt::useElabCache == false} {
        set oldMIITMVal [rt::get_parameter maxInputIncreaseToMerge]; rt::set_parameter maxInputIncreaseToMerge 1000
        set oldCDPCRL [rt::get_parameter createDfgPartConstrRecurLimit]; rt::set_parameter createDfgPartConstrRecurLimit 1
        $rt::db readXRFFile
      rt::run_rtlelab -module $rt::top
        rt::set_parameter maxInputIncreaseToMerge $oldMIITMVal
        rt::set_parameter createDfgPartConstrRecurLimit $oldCDPCRL
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    if { $rt::flowresult == 1 } { return -code error }


  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  rt::set_parameter helper_shm_key "" 
    if { [ info exists ::env(RT_TMP) ] } {
      if { [info exists ok_to_delete_rt_tmp] && $ok_to_delete_rt_tmp } { 
        file delete -force $::env(RT_TMP)
      }
    }

    source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  } ; #end uplevel
} rt::result]

if { $rt::rc } {
  $rt::db resetHdlParse
  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}
# HDL Coder Downstream Integration Tcl Script

set myTool "Xilinx Vivado 2022.2"
set myProject "symmetric_fir_vivado"
set myProjectFile "symmetric_fir_vivado.xpr"
set myTopLevelEntity "symmetric_fir"

set Family "Artix7"
set Device "xc7a50t"
set Package "cpg236"
set Speed "-1"
set MapTimePathNumber "3"
set MapTimeAdvAnalysis "True"
set PARTimePathNumber "3"
set PARTimeAdvAnalysis "True"

if { ! [ file exists $myProjectFile ] } {
    # Create new project
    puts "### Create new $myTool project <a href=\"matlab:downstream.handle('Model','sfir_fixed').openTargetTool;\">hdl_prj\\vivado_prj\\symmetric_fir_vivado.xpr</a>"
    create_project $myProject -force

} else {
    # Open existing project
    puts "### Open existing $myTool project <a href=\"matlab:downstream.handle('Model','sfir_fixed').openTargetTool;\">hdl_prj\\vivado_prj\\symmetric_fir_vivado.xpr</a>"
    open_project ${myProject}

    # Remove Old HDL source files
    set files_to_delete [get_files]
      if { [llength $files_to_delete] > 0 } {
        remove_files [get_files]
      }

}

# Set project properties
puts "### Set $myTool project properties"
if { [string compare -nocase $Family "virtexu"] == 0 || [string compare -nocase $Family "kintexu"] == 0  || [string match -nocase "*ultrascale*" $Family] == 1 } {
     set_property PART $Device [current_project]
} else {
     set_property PART ${Device}${Package}${Speed} [current_project]
}

# Add HDL source files
puts "### Update $myTool project with HDL source files"
add_file \
    {../hdlsrc/sfir_fixed/symmetric_fir.v} \
{../hdlsrc/sfir_fixed/clock_constraint.xdc} \
{D:/digilent-xdc-master/Arty-S7-50-Master.xdc} \
  
update_compile_order -fileset sources_1
foreach fs [get_files *.tcl] {
source $fs
}

set_property {STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS} -value {-mode out_of_context} -objects [get_runs synth_1]
# Close project
puts "### Close $myTool project."
close_project


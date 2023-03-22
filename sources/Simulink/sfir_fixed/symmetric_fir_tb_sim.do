onbreak resume
onerror resume
vsim -voptargs=+acc work.symmetric_fir_tb

add wave sim:/symmetric_fir_tb/u_symmetric_fir/clk
add wave sim:/symmetric_fir_tb/u_symmetric_fir/reset_x
add wave sim:/symmetric_fir_tb/u_symmetric_fir/clk_enable
add wave sim:/symmetric_fir_tb/u_symmetric_fir/x_in
add wave sim:/symmetric_fir_tb/u_symmetric_fir/h_in1
add wave sim:/symmetric_fir_tb/u_symmetric_fir/h_in2
add wave sim:/symmetric_fir_tb/u_symmetric_fir/h_in3
add wave sim:/symmetric_fir_tb/u_symmetric_fir/h_in4
add wave sim:/symmetric_fir_tb/u_symmetric_fir/ce_out
add wave sim:/symmetric_fir_tb/u_symmetric_fir/y_out
add wave sim:/symmetric_fir_tb/y_out_ref
add wave sim:/symmetric_fir_tb/u_symmetric_fir/delayed_xout
add wave sim:/symmetric_fir_tb/delayed_xout_ref
run -all

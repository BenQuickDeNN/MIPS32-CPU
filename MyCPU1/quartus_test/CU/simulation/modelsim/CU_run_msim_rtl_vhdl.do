transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/projects/VHDL/MyCPU1_ISE/MyCPU1/quartus_test/CU/CU.vhd}


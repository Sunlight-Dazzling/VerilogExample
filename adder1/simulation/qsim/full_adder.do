onerror {exit -code 1}
vlib work
vlog -work work full_adder.vo
vlog -work work full_adder.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.full_adder_vlg_vec_tst -voptargs="+acc"
vcd file -direction full_adder.msim.vcd
vcd add -internal full_adder_vlg_vec_tst/*
vcd add -internal full_adder_vlg_vec_tst/i1/*
run -all
quit -f

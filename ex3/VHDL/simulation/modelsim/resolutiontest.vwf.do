vlog -work work C:/DSD/DSD-exercises/Exercise03/VHDL/simulation/modelsim/resolutiontest.vwf.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.UnitUnderTest_vlg_vec_tst
onerror {resume}
add wave {UnitUnderTest_vlg_vec_tst/i1/LEDR[7]}
add wave {UnitUnderTest_vlg_vec_tst/i1/LEDR[6]}
add wave {UnitUnderTest_vlg_vec_tst/i1/LEDR[5]}
add wave {UnitUnderTest_vlg_vec_tst/i1/LEDR[4]}
add wave {UnitUnderTest_vlg_vec_tst/i1/LEDR[3]}
add wave {UnitUnderTest_vlg_vec_tst/i1/LEDR[2]}
add wave {UnitUnderTest_vlg_vec_tst/i1/LEDR[1]}
add wave {UnitUnderTest_vlg_vec_tst/i1/LEDR[0]}
add wave {UnitUnderTest_vlg_vec_tst/i1/SW[15]}
add wave {UnitUnderTest_vlg_vec_tst/i1/SW[14]}
add wave {UnitUnderTest_vlg_vec_tst/i1/SW[13]}
add wave {UnitUnderTest_vlg_vec_tst/i1/SW[12]}
add wave {UnitUnderTest_vlg_vec_tst/i1/SW[11]}
add wave {UnitUnderTest_vlg_vec_tst/i1/SW[10]}
add wave {UnitUnderTest_vlg_vec_tst/i1/SW[9]}
add wave {UnitUnderTest_vlg_vec_tst/i1/SW[8]}
add wave {UnitUnderTest_vlg_vec_tst/i1/SW[7]}
add wave {UnitUnderTest_vlg_vec_tst/i1/SW[6]}
add wave {UnitUnderTest_vlg_vec_tst/i1/SW[5]}
add wave {UnitUnderTest_vlg_vec_tst/i1/SW[4]}
add wave {UnitUnderTest_vlg_vec_tst/i1/SW[3]}
add wave {UnitUnderTest_vlg_vec_tst/i1/SW[2]}
add wave {UnitUnderTest_vlg_vec_tst/i1/SW[1]}
add wave {UnitUnderTest_vlg_vec_tst/i1/SW[0]}
run -all

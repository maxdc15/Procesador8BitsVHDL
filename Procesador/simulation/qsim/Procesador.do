onerror {exit -code 1}
vlib work
vcom -work work Procesador.vho
vcom -work work Procesador.vwf.vht
vsim -novopt -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.Procesador_vhd_vec_tst
vcd file -direction Procesador.msim.vcd
vcd add -internal Procesador_vhd_vec_tst/*
vcd add -internal Procesador_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f






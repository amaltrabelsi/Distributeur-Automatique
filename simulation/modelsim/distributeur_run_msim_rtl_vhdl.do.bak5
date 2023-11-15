transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/integration/gestion.vhd}
vcom -93 -work work {C:/integration/DistributionAutoProduit.vhd}
vcom -93 -work work {C:/integration/distribution.vhd}
vcom -93 -work work {C:/integration/Disponibilite.vhd}
vcom -93 -work work {C:/integration/distributeur.vhd}

vcom -93 -work work {C:/integration/testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiv_hssi -L cycloneiv_pcie_hip -L cycloneiv -L rtl_work -L work -voptargs="+acc"  test

add wave *
view structure
view signals
run -all

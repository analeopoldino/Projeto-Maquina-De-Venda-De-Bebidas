transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/analu/Downloads/Proj-Maq_Bebidas/register_n-bits.vhd}
vcom -93 -work work {/home/analu/Downloads/Proj-Maq_Bebidas/subtractor_8-bits.vhd}
vcom -93 -work work {/home/analu/Downloads/Proj-Maq_Bebidas/mux_4-to-1.vhd}
vcom -93 -work work {/home/analu/Downloads/Proj-Maq_Bebidas/mux_2-to-1.vhd}
vcom -93 -work work {/home/analu/Downloads/Proj-Maq_Bebidas/design.vhd}
vcom -93 -work work {/home/analu/Downloads/Proj-Maq_Bebidas/design-fpga.vhd}
vcom -93 -work work {/home/analu/Downloads/Proj-Maq_Bebidas/Datapath.vhd}
vcom -93 -work work {/home/analu/Downloads/Proj-Maq_Bebidas/Controller.vhd}
vcom -93 -work work {/home/analu/Downloads/Proj-Maq_Bebidas/comparator_8-bits.vhd}
vcom -93 -work work {/home/analu/Downloads/Proj-Maq_Bebidas/basic_components.vhd}
vcom -93 -work work {/home/analu/Downloads/Proj-Maq_Bebidas/adder_8-bits.vhd}
vcom -93 -work work {/home/analu/Downloads/Proj-Maq_Bebidas/clock.vhd}

vcom -93 -work work {/home/analu/Downloads/Proj-Maq_Bebidas/testbench_somadora_e_registrador.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  tb_somador_acumulador

add wave *
view structure
view signals
run -all

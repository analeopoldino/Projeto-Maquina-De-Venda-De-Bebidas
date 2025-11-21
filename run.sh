cd /home/runner
export PATH=/usr/bin:/bin:/tool/pandora64/bin:/usr/share/Riviera-PRO/bin:/usr/local/bin
export RIVIERA_HOME=/usr/share/Riviera-PRO
export CPLUS_INCLUDE_PATH=/usr/share/Riviera-PRO/interfaces/include
export ALDEC_LICENSE_FILE=27009@10.116.0.5
export HOME=/home/runner
vlib work && vcom '-2019' '-o' Controller.vhd Datapath.vhd register_n-bits.vhd mux_4-to-1.vhd adder_8-bits.vhd comparator_8-bits.vhd subtractor_8-bits.vhd mux_2-to-1.vhd basic_components.vhd design.vhd testbench_adder.vhd testbench_subtractor.vhd testbench.vhd  && vsim -c -do "vsim tb_maquina_de_venda_de_bebidas; run -all; exit"  ; echo 'Creating result.zip...' && zip -r /tmp/tmp_zip_file_123play.zip . && mv /tmp/tmp_zip_file_123play.zip result.zip
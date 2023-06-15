transcript on
if ![file isdirectory verilog_libs] {
	file mkdir verilog_libs
}

vlib verilog_libs/altera_ver
vmap altera_ver ./verilog_libs/altera_ver
vlog -vlog01compat -work altera_ver {d:/intelfpga_lite/22.1std/quartus/eda/sim_lib/altera_primitives.v}

vlib verilog_libs/lpm_ver
vmap lpm_ver ./verilog_libs/lpm_ver
vlog -vlog01compat -work lpm_ver {d:/intelfpga_lite/22.1std/quartus/eda/sim_lib/220model.v}

vlib verilog_libs/sgate_ver
vmap sgate_ver ./verilog_libs/sgate_ver
vlog -vlog01compat -work sgate_ver {d:/intelfpga_lite/22.1std/quartus/eda/sim_lib/sgate.v}

vlib verilog_libs/altera_mf_ver
vmap altera_mf_ver ./verilog_libs/altera_mf_ver
vlog -vlog01compat -work altera_mf_ver {d:/intelfpga_lite/22.1std/quartus/eda/sim_lib/altera_mf.v}

vlib verilog_libs/altera_lnsim_ver
vmap altera_lnsim_ver ./verilog_libs/altera_lnsim_ver
vlog -sv -work altera_lnsim_ver {d:/intelfpga_lite/22.1std/quartus/eda/sim_lib/altera_lnsim.sv}

vlib verilog_libs/cyclonev_ver
vmap cyclonev_ver ./verilog_libs/cyclonev_ver
vlog -vlog01compat -work cyclonev_ver {d:/intelfpga_lite/22.1std/quartus/eda/sim_lib/mentor/cyclonev_atoms_ncrypt.v}
vlog -vlog01compat -work cyclonev_ver {d:/intelfpga_lite/22.1std/quartus/eda/sim_lib/mentor/cyclonev_hmi_atoms_ncrypt.v}
vlog -vlog01compat -work cyclonev_ver {d:/intelfpga_lite/22.1std/quartus/eda/sim_lib/cyclonev_atoms.v}

vlib verilog_libs/cyclonev_hssi_ver
vmap cyclonev_hssi_ver ./verilog_libs/cyclonev_hssi_ver
vlog -vlog01compat -work cyclonev_hssi_ver {d:/intelfpga_lite/22.1std/quartus/eda/sim_lib/mentor/cyclonev_hssi_atoms_ncrypt.v}
vlog -vlog01compat -work cyclonev_hssi_ver {d:/intelfpga_lite/22.1std/quartus/eda/sim_lib/cyclonev_hssi_atoms.v}

vlib verilog_libs/cyclonev_pcie_hip_ver
vmap cyclonev_pcie_hip_ver ./verilog_libs/cyclonev_pcie_hip_ver
vlog -vlog01compat -work cyclonev_pcie_hip_ver {d:/intelfpga_lite/22.1std/quartus/eda/sim_lib/mentor/cyclonev_pcie_hip_atoms_ncrypt.v}
vlog -vlog01compat -work cyclonev_pcie_hip_ver {d:/intelfpga_lite/22.1std/quartus/eda/sim_lib/cyclonev_pcie_hip_atoms.v}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/processor {D:/processor/ram_1.v}
vlog -vlog01compat -work work +incdir+D:/processor {D:/processor/rom_22.v}
vlog -sv -work work +incdir+D:/processor {D:/processor/testbench_22.sv}
vlog -sv -work work +incdir+D:/processor/Laboratorio\ 3/ALU/alu {D:/processor/Laboratorio 3/ALU/alu/zeroflag.sv}
vlog -sv -work work +incdir+D:/processor/Laboratorio\ 3/ALU/alu {D:/processor/Laboratorio 3/ALU/alu/neflag.sv}
vlog -sv -work work +incdir+D:/processor/Laboratorio\ 3/ALU/alu {D:/processor/Laboratorio 3/ALU/alu/mux_.sv}
vlog -sv -work work +incdir+D:/processor/Laboratorio\ 3/ALU/alu {D:/processor/Laboratorio 3/ALU/alu/caflag.sv}
vlog -sv -work work +incdir+D:/processor/Laboratorio\ 3/ALU/alu {D:/processor/Laboratorio 3/ALU/alu/alu.sv}
vlog -sv -work work +incdir+D:/processor/Laboratorio\ 3/ALU/Operaciones\ aritmetricas/Sumador {D:/processor/Laboratorio 3/ALU/Operaciones aritmetricas/Sumador/sumador_n.sv}
vlog -sv -work work +incdir+D:/processor/Laboratorio\ 3/ALU/Operaciones\ aritmetricas/Sumador {D:/processor/Laboratorio 3/ALU/Operaciones aritmetricas/Sumador/sumador_1bit.sv}
vlog -sv -work work +incdir+D:/processor/Laboratorio\ 3/ALU/Operaciones\ aritmetricas/Restador {D:/processor/Laboratorio 3/ALU/Operaciones aritmetricas/Restador/restador_n.sv}
vlog -sv -work work +incdir+D:/processor/Laboratorio\ 3/ALU/Operaciones\ aritmetricas/Restador {D:/processor/Laboratorio 3/ALU/Operaciones aritmetricas/Restador/restador_1bit.sv}
vlog -sv -work work +incdir+D:/processor/Laboratorio\ 3/ALU/Operandos_logicos {D:/processor/Laboratorio 3/ALU/Operandos_logicos/xor_gate_n.sv}
vlog -sv -work work +incdir+D:/processor/Laboratorio\ 3/ALU/Operandos_logicos {D:/processor/Laboratorio 3/ALU/Operandos_logicos/xor_gate.sv}
vlog -sv -work work +incdir+D:/processor/Laboratorio\ 3/ALU/Operandos_logicos {D:/processor/Laboratorio 3/ALU/Operandos_logicos/or_gate_n.sv}
vlog -sv -work work +incdir+D:/processor/Laboratorio\ 3/ALU/Operandos_logicos {D:/processor/Laboratorio 3/ALU/Operandos_logicos/or_gate.sv}
vlog -sv -work work +incdir+D:/processor/Laboratorio\ 3/ALU/Operandos_logicos {D:/processor/Laboratorio 3/ALU/Operandos_logicos/n_not_gate.sv}
vlog -sv -work work +incdir+D:/processor/Laboratorio\ 3/ALU/Operandos_logicos {D:/processor/Laboratorio 3/ALU/Operandos_logicos/lsl_logic.sv}
vlog -sv -work work +incdir+D:/processor/Laboratorio\ 3/ALU/Operandos_logicos {D:/processor/Laboratorio 3/ALU/Operandos_logicos/lsl_arithmetic.sv}
vlog -sv -work work +incdir+D:/processor/Laboratorio\ 3/ALU/Operandos_logicos {D:/processor/Laboratorio 3/ALU/Operandos_logicos/lrl_logic.sv}
vlog -sv -work work +incdir+D:/processor/Laboratorio\ 3/ALU/Operandos_logicos {D:/processor/Laboratorio 3/ALU/Operandos_logicos/lrl_arithmetic.sv}
vlog -sv -work work +incdir+D:/processor/Laboratorio\ 3/ALU/Operandos_logicos {D:/processor/Laboratorio 3/ALU/Operandos_logicos/and_gate_n.sv}
vlog -sv -work work +incdir+D:/processor/Laboratorio\ 3/ALU/Operandos_logicos {D:/processor/Laboratorio 3/ALU/Operandos_logicos/and_gate.sv}
vlog -sv -work work +incdir+D:/processor {D:/processor/register_file.sv}
vlog -sv -work work +incdir+D:/processor {D:/processor/adder.sv}
vlog -sv -work work +incdir+D:/processor {D:/processor/extend.sv}
vlog -sv -work work +incdir+D:/processor {D:/processor/flopr.sv}
vlog -sv -work work +incdir+D:/processor {D:/processor/flopenr.sv}
vlog -sv -work work +incdir+D:/processor {D:/processor/mux2.sv}
vlog -sv -work work +incdir+D:/processor {D:/processor/decoder.sv}
vlog -sv -work work +incdir+D:/processor {D:/processor/condlogic.sv}
vlog -sv -work work +incdir+D:/processor {D:/processor/datapath.sv}
vlog -sv -work work +incdir+D:/processor {D:/processor/arm.sv}
vlog -sv -work work +incdir+D:/processor {D:/processor/controller.sv}
vlog -sv -work work +incdir+D:/processor {D:/processor/top.sv}


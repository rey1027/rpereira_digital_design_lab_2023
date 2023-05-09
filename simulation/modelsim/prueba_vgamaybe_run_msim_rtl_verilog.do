transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/Quartus_proyectos/prueba_vgamaybe_updated/prueba_vgamaybe/prueba_vgamaybe {D:/Quartus_proyectos/prueba_vgamaybe_updated/prueba_vgamaybe/prueba_vgamaybe/clkdiv.sv}


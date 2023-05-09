set_global_assignment -entity "pruebaclock" -library "lib_pruebaclock" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "pruebaclock" -library "lib_pruebaclock" -name IP_TOOL_VERSION "22.1"
set_global_assignment -entity "pruebaclock" -library "lib_pruebaclock" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_pruebaclock" -name SPD_FILE [file join $::quartus(sip_path) "pruebaclock.spd"]

set_global_assignment -library "lib_pruebaclock" -name MISC_FILE [file join $::quartus(sip_path) "pruebaclock_sim/pruebaclock.vo"]

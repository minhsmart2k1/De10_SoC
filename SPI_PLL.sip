set_global_assignment -entity "SPI_PLL" -library "lib_SPI_PLL" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "SPI_PLL" -library "lib_SPI_PLL" -name IP_TOOL_VERSION "18.1"
set_global_assignment -entity "SPI_PLL" -library "lib_SPI_PLL" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_SPI_PLL" -name SPD_FILE [file join $::quartus(sip_path) "SPI_PLL.spd"]

set_global_assignment -library "lib_SPI_PLL" -name MISC_FILE [file join $::quartus(sip_path) "SPI_PLL_sim/SPI_PLL.vo"]

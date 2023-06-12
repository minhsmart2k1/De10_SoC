# TCL File Generated by Component Editor 18.1
# Sun May 21 11:20:41 ICT 2023
# DO NOT MODIFY


# 
# SSP_UART_Avalon "SSP_UART_Avalon" v1.0
#  2023.05.21.11:20:41
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module SSP_UART_Avalon
# 
set_module_property DESCRIPTION ""
set_module_property NAME SSP_UART_Avalon
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME SSP_UART_Avalon
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL SSP_UART_Avalon
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file SSP_UART_Avalon.v VERILOG PATH ip/SSP_UART_Avalon/SSP_UART_Avalon.v TOP_LEVEL_FILE
add_fileset_file DPSFmnRAM.coe OTHER PATH ip/SSP_UART_Avalon/DPSFmnRAM.coe
add_fileset_file DPSFnmCE.v VERILOG PATH ip/SSP_UART_Avalon/DPSFnmCE.v
add_fileset_file SSP_UART.v VERILOG PATH ip/SSP_UART_Avalon/SSP_UART.v
add_fileset_file UART_BRG.v VERILOG PATH ip/SSP_UART_Avalon/UART_BRG.v
add_fileset_file UART_INT.v VERILOG PATH ip/SSP_UART_Avalon/UART_INT.v
add_fileset_file UART_RF.coe OTHER PATH ip/SSP_UART_Avalon/UART_RF.coe
add_fileset_file UART_RTO.v VERILOG PATH ip/SSP_UART_Avalon/UART_RTO.v
add_fileset_file UART_RXSM.v VERILOG PATH ip/SSP_UART_Avalon/UART_RXSM.v
add_fileset_file UART_TF.coe OTHER PATH ip/SSP_UART_Avalon/UART_TF.coe
add_fileset_file UART_TXSM.v VERILOG PATH ip/SSP_UART_Avalon/UART_TXSM.v
add_fileset_file fedet.v VERILOG PATH ip/SSP_UART_Avalon/fedet.v
add_fileset_file re1ce.v VERILOG PATH ip/SSP_UART_Avalon/re1ce.v
add_fileset_file redet.v VERILOG PATH ip/SSP_UART_Avalon/redet.v


# 
# parameters
# 


# 
# display items
# 


# 
# connection point avalon_slave_0
# 
add_interface avalon_slave_0 avalon end
set_interface_property avalon_slave_0 addressUnits WORDS
set_interface_property avalon_slave_0 associatedClock ssp_clock
set_interface_property avalon_slave_0 associatedReset reset_sink
set_interface_property avalon_slave_0 bitsPerSymbol 8
set_interface_property avalon_slave_0 burstOnBurstBoundariesOnly false
set_interface_property avalon_slave_0 burstcountUnits WORDS
set_interface_property avalon_slave_0 explicitAddressSpan 0
set_interface_property avalon_slave_0 holdTime 0
set_interface_property avalon_slave_0 linewrapBursts false
set_interface_property avalon_slave_0 maximumPendingReadTransactions 0
set_interface_property avalon_slave_0 maximumPendingWriteTransactions 0
set_interface_property avalon_slave_0 readLatency 0
set_interface_property avalon_slave_0 readWaitTime 1
set_interface_property avalon_slave_0 setupTime 0
set_interface_property avalon_slave_0 timingUnits Cycles
set_interface_property avalon_slave_0 writeWaitTime 0
set_interface_property avalon_slave_0 ENABLED true
set_interface_property avalon_slave_0 EXPORT_OF ""
set_interface_property avalon_slave_0 PORT_NAME_MAP ""
set_interface_property avalon_slave_0 CMSIS_SVD_VARIABLES ""
set_interface_property avalon_slave_0 SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave_0 iWrite write Input 1
add_interface_port avalon_slave_0 iRead read Input 1
add_interface_port avalon_slave_0 iAddress address Input 3
add_interface_port avalon_slave_0 iData writedata Input 32
add_interface_port avalon_slave_0 oData readdata Output 32
add_interface_port avalon_slave_0 iChipSelect chipselect Input 1
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isPrintableDevice 0


# 
# connection point reset_sink
# 
add_interface reset_sink reset end
set_interface_property reset_sink associatedClock ssp_clock
set_interface_property reset_sink synchronousEdges DEASSERT
set_interface_property reset_sink ENABLED true
set_interface_property reset_sink EXPORT_OF ""
set_interface_property reset_sink PORT_NAME_MAP ""
set_interface_property reset_sink CMSIS_SVD_VARIABLES ""
set_interface_property reset_sink SVD_ADDRESS_GROUP ""

add_interface_port reset_sink iRst reset Input 1


# 
# connection point interrupt_sender
# 
add_interface interrupt_sender interrupt end
set_interface_property interrupt_sender associatedAddressablePoint ""
set_interface_property interrupt_sender associatedClock clock
set_interface_property interrupt_sender associatedReset reset_sink
set_interface_property interrupt_sender bridgedReceiverOffset ""
set_interface_property interrupt_sender bridgesToReceiver ""
set_interface_property interrupt_sender ENABLED true
set_interface_property interrupt_sender EXPORT_OF ""
set_interface_property interrupt_sender PORT_NAME_MAP ""
set_interface_property interrupt_sender CMSIS_SVD_VARIABLES ""
set_interface_property interrupt_sender SVD_ADDRESS_GROUP ""

add_interface_port interrupt_sender IRQ irq Output 1


# 
# connection point ssp_clock
# 
add_interface ssp_clock clock end
set_interface_property ssp_clock clockRate 0
set_interface_property ssp_clock ENABLED true
set_interface_property ssp_clock EXPORT_OF ""
set_interface_property ssp_clock PORT_NAME_MAP ""
set_interface_property ssp_clock CMSIS_SVD_VARIABLES ""
set_interface_property ssp_clock SVD_ADDRESS_GROUP ""

add_interface_port ssp_clock SSP_SCK clk Input 1


# 
# connection point RxD_232
# 
add_interface RxD_232 conduit end
set_interface_property RxD_232 associatedClock clock
set_interface_property RxD_232 associatedReset reset_sink
set_interface_property RxD_232 ENABLED true
set_interface_property RxD_232 EXPORT_OF ""
set_interface_property RxD_232 PORT_NAME_MAP ""
set_interface_property RxD_232 CMSIS_SVD_VARIABLES ""
set_interface_property RxD_232 SVD_ADDRESS_GROUP ""

add_interface_port RxD_232 RxD_232 export Bidir 1


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock iClk clk Input 1


# 
# connection point RxD_485
# 
add_interface RxD_485 conduit end
set_interface_property RxD_485 associatedClock clock
set_interface_property RxD_485 associatedReset ""
set_interface_property RxD_485 ENABLED true
set_interface_property RxD_485 EXPORT_OF ""
set_interface_property RxD_485 PORT_NAME_MAP ""
set_interface_property RxD_485 CMSIS_SVD_VARIABLES ""
set_interface_property RxD_485 SVD_ADDRESS_GROUP ""

add_interface_port RxD_485 RxD_485 export Input 1


# 
# connection point TxD_232
# 
add_interface TxD_232 conduit end
set_interface_property TxD_232 associatedClock clock
set_interface_property TxD_232 associatedReset ""
set_interface_property TxD_232 ENABLED true
set_interface_property TxD_232 EXPORT_OF ""
set_interface_property TxD_232 PORT_NAME_MAP ""
set_interface_property TxD_232 CMSIS_SVD_VARIABLES ""
set_interface_property TxD_232 SVD_ADDRESS_GROUP ""

add_interface_port TxD_232 TxD_232 export Bidir 1


# 
# connection point TxD_485
# 
add_interface TxD_485 conduit end
set_interface_property TxD_485 associatedClock clock
set_interface_property TxD_485 associatedReset ""
set_interface_property TxD_485 ENABLED true
set_interface_property TxD_485 EXPORT_OF ""
set_interface_property TxD_485 PORT_NAME_MAP ""
set_interface_property TxD_485 CMSIS_SVD_VARIABLES ""
set_interface_property TxD_485 SVD_ADDRESS_GROUP ""

add_interface_port TxD_485 TxD_485 export Output 1


# 
# connection point xCTS
# 
add_interface xCTS conduit end
set_interface_property xCTS associatedClock clock
set_interface_property xCTS associatedReset ""
set_interface_property xCTS ENABLED true
set_interface_property xCTS EXPORT_OF ""
set_interface_property xCTS PORT_NAME_MAP ""
set_interface_property xCTS CMSIS_SVD_VARIABLES ""
set_interface_property xCTS SVD_ADDRESS_GROUP ""

add_interface_port xCTS xCTS export Input 1


# 
# connection point xDE
# 
add_interface xDE conduit end
set_interface_property xDE associatedClock clock
set_interface_property xDE associatedReset ""
set_interface_property xDE ENABLED true
set_interface_property xDE EXPORT_OF ""
set_interface_property xDE PORT_NAME_MAP ""
set_interface_property xDE CMSIS_SVD_VARIABLES ""
set_interface_property xDE SVD_ADDRESS_GROUP ""

add_interface_port xDE xDE export Output 1


# 
# connection point xRTS
# 
add_interface xRTS conduit end
set_interface_property xRTS associatedClock clock
set_interface_property xRTS associatedReset ""
set_interface_property xRTS ENABLED true
set_interface_property xRTS EXPORT_OF ""
set_interface_property xRTS PORT_NAME_MAP ""
set_interface_property xRTS CMSIS_SVD_VARIABLES ""
set_interface_property xRTS SVD_ADDRESS_GROUP ""

add_interface_port xRTS xRTS export Output 1

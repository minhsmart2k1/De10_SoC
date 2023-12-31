# TCL File Generated by Component Editor 18.1
# Mon May 22 17:20:56 ICT 2023
# DO NOT MODIFY


# 
# I2C_Slave "I2C_Slave" v1.0
#  2023.05.22.17:20:56
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module I2C_Slave
# 
set_module_property DESCRIPTION ""
set_module_property NAME I2C_Slave
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME I2C_Slave
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL i2cSlaveTop
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file i2cSlaveTop.v VERILOG PATH ip/I2C_Slave_OpenCore/i2cSlaveTop.v TOP_LEVEL_FILE
add_fileset_file i2cSlave.v VERILOG PATH ip/I2C_Slave_OpenCore/i2cSlave.v
add_fileset_file i2cSlave_define.v VERILOG PATH ip/I2C_Slave_OpenCore/i2cSlave_define.v
add_fileset_file registerInterface.v VERILOG PATH ip/I2C_Slave_OpenCore/registerInterface.v
add_fileset_file serialInterface.v VERILOG PATH ip/I2C_Slave_OpenCore/serialInterface.v
add_fileset_file timescale.v VERILOG PATH ip/I2C_Slave_OpenCore/timescale.v


# 
# parameters
# 


# 
# display items
# 


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

add_interface_port clock clk clk Input 1


# 
# connection point avalon_slave_0
# 
add_interface avalon_slave_0 avalon end
set_interface_property avalon_slave_0 addressUnits WORDS
set_interface_property avalon_slave_0 associatedClock clock
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

add_interface_port avalon_slave_0 addr address Input 8
add_interface_port avalon_slave_0 read read Input 1
add_interface_port avalon_slave_0 write write Input 1
add_interface_port avalon_slave_0 iData writedata Input 32
add_interface_port avalon_slave_0 oData readdata Output 32
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isPrintableDevice 0


# 
# connection point reset_sink
# 
add_interface reset_sink reset end
set_interface_property reset_sink associatedClock clock
set_interface_property reset_sink synchronousEdges DEASSERT
set_interface_property reset_sink ENABLED true
set_interface_property reset_sink EXPORT_OF ""
set_interface_property reset_sink PORT_NAME_MAP ""
set_interface_property reset_sink CMSIS_SVD_VARIABLES ""
set_interface_property reset_sink SVD_ADDRESS_GROUP ""

add_interface_port reset_sink rst reset Input 1


# 
# connection point scl
# 
add_interface scl conduit end
set_interface_property scl associatedClock clock
set_interface_property scl associatedReset ""
set_interface_property scl ENABLED true
set_interface_property scl EXPORT_OF ""
set_interface_property scl PORT_NAME_MAP ""
set_interface_property scl CMSIS_SVD_VARIABLES ""
set_interface_property scl SVD_ADDRESS_GROUP ""

add_interface_port scl scl export Input 1


# 
# connection point sda
# 
add_interface sda conduit end
set_interface_property sda associatedClock clock
set_interface_property sda associatedReset ""
set_interface_property sda ENABLED true
set_interface_property sda EXPORT_OF ""
set_interface_property sda PORT_NAME_MAP ""
set_interface_property sda CMSIS_SVD_VARIABLES ""
set_interface_property sda SVD_ADDRESS_GROUP ""

add_interface_port sda sda export Bidir 1


# CustomCMD Framework v1.0.0  |  pack_format 57  (1.21.2 - 1.21.3)
# FRAMEWORK ONLY - does not function as a standalone datapack.
scoreboard objectives add ccmd.state dummy "CCMD: Load"
scoreboard players set #ccmd.loaded ccmd.state 0
function customcmd:core/init
function customcmd:core/version
function #customcmd:on_load
scoreboard players set #ccmd.loaded ccmd.state 1

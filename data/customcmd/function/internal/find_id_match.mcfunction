data modify storage customcmd:dispatch handler set from storage customcmd:temp id_current.handler
data modify storage customcmd:dispatch command set from storage customcmd:temp id_current.name
data modify storage customcmd:dispatch required_perm set from storage customcmd:temp id_current.permission
data modify storage customcmd:dispatch enabled set from storage customcmd:temp id_current.enabled
scoreboard players set #ccmd.found ccmd.state 1

data modify storage customcmd:dispatch handler set from storage customcmd:temp current.handler
data modify storage customcmd:dispatch command set from storage customcmd:temp current.name
data modify storage customcmd:dispatch required_perm set from storage customcmd:temp current.permission
data modify storage customcmd:dispatch enabled set from storage customcmd:temp current.enabled
scoreboard players set #ccmd.found ccmd.state 1

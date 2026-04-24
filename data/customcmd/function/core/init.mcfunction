scoreboard objectives add ccmd.perm dummy "CCMD: Permission Level (0-4)"
scoreboard objectives add ccmd.calls dummy "CCMD: Lifetime Call Count"
scoreboard objectives add ccmd.state dummy "CCMD: Internal State"
scoreboard objectives add ccmd.errcode dummy "CCMD: Last Error Code"
scoreboard objectives add ccmd.id dummy "CCMD: ID Counter"
scoreboard objectives add ccmd.trigger trigger "[CCMD] /trigger ccmd.trigger set <id>"
data modify storage customcmd:registry commands set value []
data modify storage customcmd:registry count set value 0
data modify storage customcmd:config version set value "1.0.0"
data modify storage customcmd:config debug set value 0b
data modify storage customcmd:config max_history set value 100
data modify storage customcmd:dispatch active set value 0b
data modify storage customcmd:dispatch command set value ""
data modify storage customcmd:dispatch args set value {}
data modify storage customcmd:dispatch caller_name set value ""
data modify storage customcmd:dispatch handler set value ""
data modify storage customcmd:dispatch required_perm set value 0
data modify storage customcmd:dispatch enabled set value 1b
data modify storage customcmd:dispatch result set value 0b
data modify storage customcmd:history entries set value []
data modify storage customcmd:history count set value 0
scoreboard players set #ccmd.count ccmd.id 0
scoreboard players set #ccmd.found ccmd.state 0
scoreboard players set #ccmd.req ccmd.state 0
scoreboard players set #ccmd.hcount ccmd.state 0
scoreboard players set #ccmd.hmax ccmd.state 0
scoreboard players set #ccmd.errcode ccmd.errcode 0

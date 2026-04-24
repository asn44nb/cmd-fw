execute unless entity @s[tag=ccmd.admin] run return fail
data modify storage customcmd:registry commands set value []
data modify storage customcmd:registry count set value 0
data modify storage customcmd:history entries set value []
data modify storage customcmd:history count set value 0
data modify storage customcmd:dispatch active set value 0b
data modify storage customcmd:dispatch handler set value ""
data modify storage customcmd:dispatch command set value ""
data modify storage customcmd:dispatch result set value 0b
scoreboard players set #ccmd.count ccmd.id 0
scoreboard players set #ccmd.found ccmd.state 0
scoreboard players set #ccmd.errcode ccmd.errcode 0
tellraw @a[tag=ccmd.admin] [{"text":"[CCMD] ","color":"dark_aqua"},{"text":"Registry cleared.","color":"red"},{"text":"  Run /reload to re-register commands.","color":"dark_gray"}]

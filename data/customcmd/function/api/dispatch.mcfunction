execute if data storage customcmd:dispatch {active:1b} run return fail
data modify storage customcmd:dispatch active set value 1b
data modify storage customcmd:dispatch caller_name set from entity @s Name
data modify storage customcmd:temp search_target set from storage customcmd:dispatch command
data modify storage customcmd:temp search_list set from storage customcmd:registry commands
scoreboard players set #ccmd.found ccmd.state 0
data modify storage customcmd:dispatch handler set value ""
function customcmd:internal/find_loop
execute if score #ccmd.found ccmd.state matches 0 run function customcmd:internal/error_unknown
execute if score #ccmd.found ccmd.state matches 0 run return run data modify storage customcmd:dispatch active set value 0b
function customcmd:internal/permission_check
execute if score @s ccmd.errcode matches 2 run return run data modify storage customcmd:dispatch active set value 0b
execute if data storage customcmd:dispatch {enabled:0b} run function customcmd:internal/error_disabled
execute if data storage customcmd:dispatch {enabled:0b} run return run data modify storage customcmd:dispatch active set value 0b
function #customcmd:on_dispatch
function customcmd:internal/log_call
data modify storage customcmd:temp handler set from storage customcmd:dispatch handler
function customcmd:internal/run_handler with storage customcmd:temp
data modify storage customcmd:dispatch active set value 0b
data modify storage customcmd:dispatch result set value 1b
scoreboard players set @s ccmd.errcode 0
scoreboard players add @s ccmd.calls 1

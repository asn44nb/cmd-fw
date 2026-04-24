execute store result storage customcmd:temp trigger_id int 1 run scoreboard players get @s ccmd.trigger
scoreboard players set @s ccmd.trigger 0
data modify storage customcmd:dispatch command set from storage customcmd:temp trigger_id
data modify storage customcmd:temp id_search_list set from storage customcmd:registry commands
scoreboard players set #ccmd.found ccmd.state 0
data modify storage customcmd:dispatch handler set value ""
function customcmd:internal/find_id_loop
execute if score #ccmd.found ccmd.state matches 0 run return run function customcmd:internal/error_unknown
execute unless data storage customcmd:dispatch args run data modify storage customcmd:dispatch args set value {}
function customcmd:api/dispatch

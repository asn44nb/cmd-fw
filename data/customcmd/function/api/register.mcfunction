# Macro args: name, namespace, description, usage, permission, handler
scoreboard players add #ccmd.count ccmd.id 1
$data modify storage customcmd:registry commands append value {id:0,name:"$(name)",namespace:"$(namespace)",description:"$(description)",usage:"$(usage)",permission:$(permission),handler:"$(handler)",enabled:1b,aliases:[]}
execute store result storage customcmd:temp reg_id int 1 run scoreboard players get #ccmd.count ccmd.id
function customcmd:internal/patch_last_id with storage customcmd:temp
execute store result storage customcmd:registry count int 1 run scoreboard players get #ccmd.count ccmd.id
function #customcmd:on_register
$tellraw @a[tag=ccmd.admin] [{"text":"[CCMD] ","color":"dark_aqua"},{"text":"+ Registered ","color":"gray"},{"text":"$(namespace):$(name)","color":"yellow","hoverEvent":{"action":"show_text","contents":{"text":"Description: $(description)\nUsage: $(usage)\nPermission: $(permission)\nHandler: $(handler)"}}},{"text":"  perm=$(permission)","color":"dark_gray"}]

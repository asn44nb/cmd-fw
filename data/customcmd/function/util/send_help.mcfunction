# Macro args: name, namespace, description, usage, permission
$tellraw @s [{"text":"\n"},{"text":"[CCMD] Help - ","color":"dark_aqua"},{"text":"$(namespace):$(name)","color":"yellow"}]
$tellraw @s [{"text":"  Description: ","color":"dark_gray"},{"text":"$(description)","color":"white"}]
$tellraw @s [{"text":"  Usage:       ","color":"dark_gray"},{"text":"$(usage)","color":"aqua"}]
$tellraw @s [{"text":"  Permission:  ","color":"dark_gray"},{"text":"$(permission)","color":"green"}]

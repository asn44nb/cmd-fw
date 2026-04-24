# Macro arg: name
$data remove storage customcmd:registry commands[{name:"$(name)"}]
execute store result storage customcmd:registry count int 1 run data get storage customcmd:registry commands
$tellraw @a[tag=ccmd.admin] [{"text":"[CCMD] ","color":"dark_aqua"},{"text":"- Unregistered ","color":"red"},{"text":"$(name)","color":"yellow"}]

tellraw @s [{"text":"\n"},{"text":"━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━","color":"dark_aqua"}]
tellraw @s [{"text":"  "},{"text":"CustomCMD","color":"aqua","bold":true},{"text":" Command Registry","color":"gray"}]
tellraw @s [{"text":"━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━","color":"dark_aqua"}]
data modify storage customcmd:temp list_buf set from storage customcmd:registry commands
function customcmd:internal/list_loop
tellraw @s [{"text":"  Total: ","color":"dark_gray"},{"storage":"customcmd:registry","nbt":"count","color":"aqua","interpret":false},{"text":" command(s)  |  Your level: ","color":"dark_gray"},{"score":{"name":"@s","objective":"ccmd.perm"},"color":"green"}]
tellraw @s [{"text":"━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━","color":"dark_aqua"}]

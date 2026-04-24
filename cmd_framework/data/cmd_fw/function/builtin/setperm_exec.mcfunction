# MACRO  cmd_fw:builtin/setperm_exec
# Params: target, level
$scoreboard players set $(target) cmd_fw.perm $(level)
$tellraw @a [{"text":"[CMD_FW] ","color":"aqua"},{"text":"$(target)","color":"yellow","bold":true},{"text":" → izin seviyesi ","color":"white"},{"text":"$(level)","color":"green","bold":true},{"text":" yapıldı.","color":"white"}]

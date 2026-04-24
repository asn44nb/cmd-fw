# cmd_fw:builtin/getperm  |  Oyuncunun kendi izin seviyesini gösterir
tellraw @s ["",{"text":"[CMD_FW] ","color":"aqua"},{"text":"İzin seviyeniz: ","color":"white"},{"score":{"name":"@s","objective":"cmd_fw.perm"},"color":"yellow","bold":true},{"text":" / 4","color":"gray"}]

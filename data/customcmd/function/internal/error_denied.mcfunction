scoreboard players set @s ccmd.errcode 2
tellraw @s [{"text":"[CCMD] ","color":"dark_red"},{"text":"Permission denied.  ","color":"red"},{"text":"Required: ","color":"dark_gray"},{"score":{"name":"#ccmd.req","objective":"ccmd.state"},"color":"yellow"},{"text":"  Yours: ","color":"dark_gray"},{"score":{"name":"@s","objective":"ccmd.perm"},"color":"aqua"}]

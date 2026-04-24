# cmd_fw:tick  |  Her tick: trigger tespiti + cooldown
execute unless entity @a run return 0

scoreboard players enable @a cmd_fw
execute as @a[scores={cmd_fw=1..}] at @s run function cmd_fw:core/scan
scoreboard players reset @a[scores={cmd_fw=1..}] cmd_fw
execute as @a[scores={cmd_fw.cooldown=1..}] run scoreboard players remove @s cmd_fw.cooldown 1

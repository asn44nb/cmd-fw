execute as @a run function customcmd:internal/trigger_enable
execute as @a[scores={ccmd.trigger=1..}] at @s run function customcmd:internal/trigger_process

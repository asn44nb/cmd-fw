# cmd_fw:api/arg_count
# Argüman sayısını #arg_count cmd_fw.temp skoruna yazar
scoreboard players set #arg_count cmd_fw.temp 0
execute if data storage cmd_fw:engine current.args[0] run scoreboard players set #arg_count cmd_fw.temp 1
execute if data storage cmd_fw:engine current.args[1] run scoreboard players set #arg_count cmd_fw.temp 2
execute if data storage cmd_fw:engine current.args[2] run scoreboard players set #arg_count cmd_fw.temp 3

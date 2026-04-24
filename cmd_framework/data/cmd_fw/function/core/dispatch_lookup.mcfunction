# MACRO  cmd_fw:core/dispatch_lookup
# Params: name
$execute if data storage cmd_fw:engine {handlers:{$(name):{}}} run function cmd_fw:core/load_handler {cmd:"$(name)"}
$execute unless data storage cmd_fw:engine {handlers:{$(name):{}}} run tellraw @s [{"text":"[CMD_FW] ","color":"red"},{"text":"Bilinmeyen komut: "},{"text":"'$(name)'","color":"yellow"},{"text":"  – Yardım için kitabı=help, /trigger cmd_fw","color":"dark_gray"}]

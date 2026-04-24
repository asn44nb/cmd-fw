# MACRO  cmd_fw:api/respond_error
# Params: msg
$tellraw @s [{"text":"[✘] ","color":"red","bold":true},{"text":"$(msg)","color":"yellow"}]

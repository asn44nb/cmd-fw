# MACRO  cmd_fw:builtin/help_display
# Params: name, description, permission
$tellraw @s ["",{"text":" ▸ ","color":"gold"},{"text":"$(name)","color":"yellow","bold":true},{"text":"  $(description)","color":"gray"},{"text":"  [izin:$(permission)]","color":"dark_gray"}]

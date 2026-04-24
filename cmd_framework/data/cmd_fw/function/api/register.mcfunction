# MACRO  cmd_fw:api/register
# Params: name, description, permission, handler
#
# Kullanım (başka bir datapack'in load fonksiyonundan):
#   function cmd_fw:api/register {name:"komut",description:"Açıklama",permission:0,handler:"namespace:path"}
#
# permission seviyeleri:
#   0 = Herkes   1 = Mod   2 = Admin   3 = Sr.Admin   4 = Sahip (OP)
$data modify storage cmd_fw:engine handlers.$(name) set value {permission:$(permission),handler:"$(handler)",description:"$(description)"}
$data modify storage cmd_fw:engine help_lines append value {name:"$(name)",description:"$(description)",permission:$(permission)}
$tellraw @a[tag=cmd_fw.debug] [{"text":"[CMD_FW] Kayıt: ","color":"green"},{"text":"$(name)","color":"yellow"},{"text":" → ","color":"gray"},{"text":"$(handler)","color":"aqua"},{"text":" (perm:$(permission))","color":"dark_gray"}]

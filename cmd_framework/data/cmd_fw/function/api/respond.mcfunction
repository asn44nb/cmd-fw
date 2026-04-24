# MACRO  cmd_fw:api/respond
# Params: msg
# Kullanım (handler içinde): function cmd_fw:api/respond {msg:"Merhaba!"}
$tellraw @s [{"text":"[✔] ","color":"aqua","bold":true},{"text":"$(msg)","color":"white"}]

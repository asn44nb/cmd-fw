# MACRO  cmd_fw:api/has_arg
# Belirtilen indexte argüman var mı? 1=var, 0=yok (return value)
# Params: index
$execute if data storage cmd_fw:engine current.args[$(index)] run return 1
return 0

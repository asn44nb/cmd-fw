# MACRO  cmd_fw:core/load_handler
# Params: cmd
$data modify storage cmd_fw:engine current.handler set from storage cmd_fw:engine handlers.$(cmd).handler
$data modify storage cmd_fw:engine current.perm_required set from storage cmd_fw:engine handlers.$(cmd).permission
function cmd_fw:core/auth

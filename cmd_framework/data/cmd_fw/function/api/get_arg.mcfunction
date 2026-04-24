# MACRO  cmd_fw:api/get_arg
# Argümanı hedef storage path'e kopyalar
# Params: index (0-tabanlı), dest_ns, dest_path
#
# Kullanım:
#   function cmd_fw:api/get_arg {index:0,dest_ns:"mypk:data",dest_path:"input.player"}
$data modify storage $(dest_ns) $(dest_path) set from storage cmd_fw:engine current.args[$(index)]

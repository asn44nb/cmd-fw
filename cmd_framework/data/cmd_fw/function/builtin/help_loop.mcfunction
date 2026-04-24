# cmd_fw:builtin/help_loop  |  Rekürsif yardım listesi döngüsü
execute if data storage cmd_fw:engine {help_iter:[{}]} run function cmd_fw:builtin/help_item
execute if data storage cmd_fw:engine {help_iter:[{}]} run data remove storage cmd_fw:engine help_iter[0]
execute if data storage cmd_fw:engine {help_iter:[{}]} run function cmd_fw:builtin/help_loop

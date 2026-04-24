# cmd_fw:builtin/help  |  Kayıtlı komutları listeler
tellraw @s ["",{"text":"══════════════════════════════","color":"dark_gray"},{"text":" ⚡ Custom Command Framework","color":"gold","bold":true},{"text":" v","color":"gray"},{"nbt":"version","storage":"cmd_fw:engine"},{"text":"","color":"gray"},{"text":"══════════════════════════════","color":"dark_gray"}]
tellraw @s ["",{"text":" Kullanım: ","color":"gray"},{"text":"Kitap","color":"yellow"},{"text":" → 1.sayfa=komut, 2-4.sayfa=argümanlar → ","color":"gray"},{"text":"/trigger cmd_fw","color":"green","bold":true}]
tellraw @s {"text":" ","color":"gray"}

data modify storage cmd_fw:engine help_iter set from storage cmd_fw:engine help_lines
function cmd_fw:builtin/help_loop

tellraw @s {"text":"══════════════════════════════","color":"dark_gray"}

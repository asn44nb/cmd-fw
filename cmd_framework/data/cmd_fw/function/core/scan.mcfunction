# cmd_fw:core/scan  |  Trigger aktifleyen oyuncu bağlamında çalışır

# Cooldown kontrolü
execute if score @s cmd_fw.cooldown matches 1.. run tellraw @s {"text":"[CMD_FW] Lütfen biraz bekleyin...","color":"yellow"}
execute if score @s cmd_fw.cooldown matches 1.. run return 0

# Ana elde Writable Book kontrolü
execute unless data entity @s SelectedItem{id:"minecraft:writable_book"} run tellraw @s [{"text":"[CMD_FW] ","color":"red"},{"text":"Ana eline bir ","color":"yellow"},{"text":"Writable Book","color":"white","bold":true},{"text":" almalısın!","color":"yellow"},{"text":"  (Yok mu? → kitabı=givebook, /trigger cmd_fw)","color":"dark_gray"}]
execute unless data entity @s SelectedItem{id:"minecraft:writable_book"} run return 0

# Sayfa 1 var mı?
execute unless data entity @s SelectedItem.components."minecraft:writable_book_content".pages[0] run tellraw @s [{"text":"[CMD_FW] ","color":"red"},{"text":"Kitabın 1. sayfasına komut adını yaz!","color":"yellow"}]
execute unless data entity @s SelectedItem.components."minecraft:writable_book_content".pages[0] run return 0

# Giriş oku
function cmd_fw:core/read_input

# Cooldown: 20 tick (1 saniye)
scoreboard players set @s cmd_fw.cooldown 20

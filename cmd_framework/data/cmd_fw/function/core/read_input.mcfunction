# cmd_fw:core/read_input  |  Kitap sayfalarını storage'a aktarır

# Önceki state'i temizle
data modify storage cmd_fw:engine current set value {args:[]}

# Komut adı – Sayfa 1
data modify storage cmd_fw:engine current.name set from entity @s SelectedItem.components."minecraft:writable_book_content".pages[0].raw

# Boş sayfa kontrolü
execute unless data storage cmd_fw:engine current.name run tellraw @s [{"text":"[CMD_FW] ","color":"red"},{"text":"1. sayfa boş veya okunamadı!","color":"yellow"}]
execute unless data storage cmd_fw:engine current.name run return 0

# Argüman 1 – Sayfa 2
execute if data entity @s SelectedItem.components."minecraft:writable_book_content".pages[1] run data modify storage cmd_fw:engine current.args append from entity @s SelectedItem.components."minecraft:writable_book_content".pages[1].raw

# Argüman 2 – Sayfa 3
execute if data entity @s SelectedItem.components."minecraft:writable_book_content".pages[2] run data modify storage cmd_fw:engine current.args append from entity @s SelectedItem.components."minecraft:writable_book_content".pages[2].raw

# Argüman 3 – Sayfa 4
execute if data entity @s SelectedItem.components."minecraft:writable_book_content".pages[3] run data modify storage cmd_fw:engine current.args append from entity @s SelectedItem.components."minecraft:writable_book_content".pages[3].raw

# Dispatch'e yönlendir
function cmd_fw:core/dispatch

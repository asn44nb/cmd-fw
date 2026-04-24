# cmd_fw:core/auth  |  İzin seviyesi doğrulaması

# Gerekli izni skora yükle (varsayılan 0)
scoreboard players set #perm_req cmd_fw.temp 0
execute store result score #perm_req cmd_fw.temp run data get storage cmd_fw:engine current.perm_required

# İzin yeterli → handler'ı çağır
execute if score @s cmd_fw.perm >= #perm_req cmd_fw.temp run function cmd_fw:core/call_handler with storage cmd_fw:engine current

# İzin yetersiz → hata mesajı
execute unless score @s cmd_fw.perm >= #perm_req cmd_fw.temp run tellraw @s [{"text":"[CMD_FW] ","color":"red"},{"text":"Bu komutu çalıştırmak için izin seviyesi ","color":"yellow"},{"score":{"name":"#perm_req","objective":"cmd_fw.temp"},"color":"white"},{"text":" gerekiyor. Senin seviyein: ","color":"yellow"},{"score":{"name":"@s","objective":"cmd_fw.perm"},"color":"white"}]

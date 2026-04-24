# MACRO  cmd_fw:api/set_perm
# Params: player (isim), level (0-4)
# Kullanım: function cmd_fw:api/set_perm {player:"Oyuncu",level:2}
$scoreboard players set $(player) cmd_fw.perm $(level)
$tellraw @a[tag=cmd_fw.debug] [{"text":"[CMD_FW] İzin: ","color":"green"},{"text":"$(player)","color":"yellow"},{"text":" → Seviye $(level)","color":"white"}]

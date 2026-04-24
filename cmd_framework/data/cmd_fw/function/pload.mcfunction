# Tüm oyuncular için trigger'ı etkinleştir
scoreboard players enable @a cmd_fw

tellraw @a[tag=cmd_fw.debug] {"text":"[CMD_FW] Framework başlatıldı (v1.0.0)","color":"green"}
# ================================================================
# cmd_fw:init  |  Custom Command Framework v1.0
# Pack Format 57  (MC 1.21.2 – 1.21.3)
# ================================================================
# Scoreboard'ları oluştur
scoreboard objectives add cmd_fw trigger
scoreboard objectives add cmd_fw.perm dummy
scoreboard objectives add cmd_fw.cooldown dummy
scoreboard objectives add cmd_fw.temp dummy

# Storage'ı sıfırla
data modify storage cmd_fw:engine handlers set value {}
data modify storage cmd_fw:engine help_lines set value []
data modify storage cmd_fw:engine version set value "1.0.0"

# Tüm oyuncular için trigger'ı etkinleştir
scoreboard players enable @a cmd_fw

# Built-in komutları kaydet
function cmd_fw:api/register {name:"help",description:"Tüm komutları listeler",permission:0,handler:"cmd_fw:builtin/help"}
function cmd_fw:api/register {name:"version",description:"Framework sürümünü gösterir",permission:0,handler:"cmd_fw:builtin/version"}
function cmd_fw:api/register {name:"setperm",description:"Oyuncu iznini ayarlar [OP]",permission:4,handler:"cmd_fw:builtin/setperm"}
function cmd_fw:api/register {name:"getperm",description:"Kendi izin seviyeni gösterir",permission:0,handler:"cmd_fw:builtin/getperm"}
function cmd_fw:api/register {name:"givebook",description:"Komut kitabı verir",permission:0,handler:"cmd_fw:api/give_book"}

tellraw @a[tag=cmd_fw.debug] {"text":"[CMD_FW] Framework başlatıldı (v1.0.0)","color":"green"}

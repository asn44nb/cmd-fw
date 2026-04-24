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
execute unless data storage cmd_fw:engine handlers run data modify storage cmd_fw:engine handlers set value {}
execute unless data storage cmd_fw:engine help_lines run data modify storage cmd_fw:engine help_lines set value []
#data modify storage cmd_fw:engine version set value "1.0.0"

# Built-in komutları kaydet
function cmd_fw:api/register {name:"help",description:"Tüm komutları listeler",permission:0,handler:"function cmd_fw:builtin/help"}
function cmd_fw:api/register {name:"version",description:"Framework sürümünü gösterir",permission:0,handler:"function cmd_fw:builtin/version"}
function cmd_fw:api/register {name:"setperm",description:"Oyuncu iznini ayarlar [OP]",permission:4,handler:"function cmd_fw:builtin/setperm"}
function cmd_fw:api/register {name:"getperm",description:"Kendi izin seviyeni gösterir",permission:0,handler:"function cmd_fw:builtin/getperm"}
function cmd_fw:api/register {name:"givebook",description:"Komut kitabı verir",permission:0,handler:"function cmd_fw:api/give_book"}
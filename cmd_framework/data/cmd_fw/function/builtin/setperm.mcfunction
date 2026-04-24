# cmd_fw:builtin/setperm  |  Oyuncu iznini değiştirir (permission:4 gerektirir)
# Kitap: sayfa1=setperm  sayfa2=OyuncuAdı  sayfa3=0|1|2|3|4

execute unless data storage cmd_fw:engine current.args[0] run function cmd_fw:api/respond_error {msg:"Kullanım: sayfa2=OyuncuAdı sayfa3=Seviye(0-4)"}
execute unless data storage cmd_fw:engine current.args[0] run return 0
execute unless data storage cmd_fw:engine current.args[1] run function cmd_fw:api/respond_error {msg:"Kullanım: sayfa2=OyuncuAdı sayfa3=Seviye(0-4)"}
execute unless data storage cmd_fw:engine current.args[1] run return 0

data modify storage cmd_fw:temp setperm.target set from storage cmd_fw:engine current.args[0]
data modify storage cmd_fw:temp setperm.level_raw set from storage cmd_fw:engine current.args[1]

execute if data storage cmd_fw:temp {setperm:{level_raw:"0"}} run data modify storage cmd_fw:temp setperm.level set value 0
execute if data storage cmd_fw:temp {setperm:{level_raw:"1"}} run data modify storage cmd_fw:temp setperm.level set value 1
execute if data storage cmd_fw:temp {setperm:{level_raw:"2"}} run data modify storage cmd_fw:temp setperm.level set value 2
execute if data storage cmd_fw:temp {setperm:{level_raw:"3"}} run data modify storage cmd_fw:temp setperm.level set value 3
execute if data storage cmd_fw:temp {setperm:{level_raw:"4"}} run data modify storage cmd_fw:temp setperm.level set value 4

execute if data storage cmd_fw:temp setperm.level run function cmd_fw:builtin/setperm_exec with storage cmd_fw:temp setperm
execute unless data storage cmd_fw:temp setperm.level run function cmd_fw:api/respond_error {msg:"Geçersiz seviye! 0–4 arasında bir sayı gir."}

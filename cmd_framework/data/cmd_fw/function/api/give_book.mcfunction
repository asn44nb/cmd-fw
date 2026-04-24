# cmd_fw:api/give_book  |  Oyuncuya komut kitabı verir
give @s minecraft:writable_book
tellraw @s ["",{"text":"[CMD_FW] ","color":"aqua","bold":true},{"text":"Writable Book verildi!","color":"white"},{"text":"  Sayfa 1","color":"yellow"},{"text":" = Komut adı","color":"gray"},{"text":"  Sayfa 2","color":"yellow"},{"text":" = Argüman 1","color":"gray"},{"text":"  Sayfa 3","color":"yellow"},{"text":" = Argüman 2","color":"gray"},{"text":"  Sonra kitabı elde al → ","color":"white"},{"text":"/trigger cmd_fw","color":"green","bold":true},{"text":" yaz","color":"white"}]

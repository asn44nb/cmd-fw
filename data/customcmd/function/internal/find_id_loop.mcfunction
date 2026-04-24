execute unless data storage customcmd:temp id_search_list[0] return 0
data modify storage customcmd:temp id_current set from storage customcmd:temp id_search_list[0]
execute store result storage customcmd:temp id_current_id int 1 run data get storage customcmd:temp id_current.id
function customcmd:internal/find_id_check with storage customcmd:temp
execute if score #ccmd.found ccmd.state matches 1 return 0
data remove storage customcmd:temp id_search_list[0]
function customcmd:internal/find_id_loop

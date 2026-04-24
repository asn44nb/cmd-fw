execute unless data storage customcmd:temp search_list[0] return 0
data modify storage customcmd:temp current set from storage customcmd:temp search_list[0]
data modify storage customcmd:temp current_name set from storage customcmd:temp current.name
function customcmd:internal/find_check with storage customcmd:temp
execute if score #ccmd.found ccmd.state matches 1 return 0
data remove storage customcmd:temp search_list[0]
function customcmd:internal/find_loop

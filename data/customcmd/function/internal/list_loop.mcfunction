execute unless data storage customcmd:temp list_buf[0] return 0
data modify storage customcmd:temp list_current set from storage customcmd:temp list_buf[0]
function customcmd:internal/list_entry with storage customcmd:temp
data remove storage customcmd:temp list_buf[0]
function customcmd:internal/list_loop

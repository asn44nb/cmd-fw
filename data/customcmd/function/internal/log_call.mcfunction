data modify storage customcmd:temp log_entry set value {command:"",caller:""}
data modify storage customcmd:temp log_entry.command set from storage customcmd:dispatch command
data modify storage customcmd:temp log_entry.caller set from storage customcmd:dispatch caller_name
data modify storage customcmd:history entries prepend from storage customcmd:temp log_entry
execute store result score #ccmd.hcount ccmd.state run data get storage customcmd:history entries
execute store result score #ccmd.hmax ccmd.state run data get storage customcmd:config max_history
execute if score #ccmd.hcount ccmd.state > #ccmd.hmax ccmd.state run data remove storage customcmd:history entries[-1]
execute store result storage customcmd:history count int 1 run data get storage customcmd:history entries

scoreboard players add @s ccmd.perm 0
execute store result score #ccmd.req ccmd.state run data get storage customcmd:dispatch required_perm
execute if entity @s[scores={ccmd.perm=4}] return 0
execute if score @s ccmd.perm < #ccmd.req ccmd.state run function customcmd:internal/error_denied

##
 # uninstall.mcfunction
 # 
 #
 # Created by RME.
##
# Removes the scoreboards
scoreboard objectives remove campfire_cook_timer
scoreboard objectives remove campfire_kill_timer
# kills all campfire entities. This means if you (re)load the pack 
kill @e[tag=campfire_entity]

tellraw @s {"text":"Uninstalled Campfire Leather datapack, please disable the pack using /datapack disable [datapack file]","bold":true,"color":"red"}

scoreboard objectives remove campfire_settings
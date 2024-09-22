##
 # reset.mcfunction
 # 
 #
 # Created by RME.
##
# Removes the scoreboards
scoreboard objectives remove campfire_cook_timer
scoreboard objectives remove campfire_kill_timer
scoreboard objectives remove campfire_settings
# kills all campfire entities.
kill @e[tag=campfire_entity]
function rme:campfire_leather/load
tellraw @s {"text":"Reset Campfire Leather datapack!","bold":true,"color":"green"}
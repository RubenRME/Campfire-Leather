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
execute store result score #command_feedback campfire_settings run gamerule sendCommandFeedback
execute if score #command_feedback campfire_settings matches 1 run function rme:campfire_leather/hide_command_feedback
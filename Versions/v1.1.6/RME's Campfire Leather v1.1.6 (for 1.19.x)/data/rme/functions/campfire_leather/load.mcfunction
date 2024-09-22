##
 # main.mcfunction
 # campfire_leather
 #
 # Created by RME.
##
# Sets the timers
scoreboard objectives add campfire_cook_timer dummy
scoreboard objectives add campfire_kill_timer dummy

# Campfire settings
scoreboard objectives add campfire_settings dummy
execute unless score use_campfire campfire_settings matches 0.. run scoreboard players set use_campfire campfire_settings 0
execute unless score use_soul_campfire campfire_settings matches 0.. run scoreboard players set use_soul_campfire campfire_settings 1
scoreboard players set campfire_settings_editing campfire_settings 0
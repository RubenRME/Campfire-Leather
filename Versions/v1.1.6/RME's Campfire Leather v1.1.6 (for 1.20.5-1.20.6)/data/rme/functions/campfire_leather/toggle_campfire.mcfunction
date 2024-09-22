##
 # toggle_soul_campfire.mcfunction
 # 
 #
 # Created by RME.
##
# Check for score and inverse
scoreboard players set campfire_settings_editing campfire_settings 1
execute if score use_campfire campfire_settings matches 0 run function rme:campfire_leather/toggle/enable_campfire
execute if score use_campfire campfire_settings matches 1 run function rme:campfire_leather/toggle/disable_campfire
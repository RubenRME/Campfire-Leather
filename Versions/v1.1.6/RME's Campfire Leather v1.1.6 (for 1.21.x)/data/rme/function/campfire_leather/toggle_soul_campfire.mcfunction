##
 # toggle_soul_campfire.mcfunction
 # 
 #
 # Created by RME.
##
# Check for score and inverse
scoreboard players set campfire_settings_editing campfire_settings 1
execute if score campfire_settings_editing campfire_settings matches 1 if score use_soul_campfire campfire_settings matches 0 run function rme:campfire_leather/toggle/enable_soul_campfire
execute if score campfire_settings_editing campfire_settings matches 1 if score use_soul_campfire campfire_settings matches 1 run function rme:campfire_leather/toggle/disable_soul_campfire
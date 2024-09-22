##
 # enable_campfire.mcfunction
 # 
 #
 # Created by RME.
##
execute if score campfire_settings_editing campfire_settings matches 1 if score use_campfire campfire_settings matches 0 run scoreboard players set use_campfire campfire_settings 1
execute if score campfire_settings_editing campfire_settings matches 1 if score use_campfire campfire_settings matches 1 run tellraw @s {"text":"Enabled the use of Regular Campfires","bold":true,"color":"green"}
scoreboard players set campfire_settings_editing campfire_settings 0
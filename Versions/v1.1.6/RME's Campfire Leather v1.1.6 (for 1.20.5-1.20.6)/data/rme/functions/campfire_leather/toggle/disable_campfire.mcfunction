##
 # enable_campfire.mcfunction
 # 
 #
 # Created by RME.
##
execute if score use_campfire campfire_settings matches 1 run scoreboard players set use_campfire campfire_settings 0
execute if score use_campfire campfire_settings matches 0 run tellraw @s {"text":"Disabled the use of Regular Campfires","bold":true,"color":"red"}
scoreboard players set campfire_settings_editing campfire_settings 0
##
 # enable_soul_campfire.mcfunction
 # 
 #
 # Created by RME.
##
execute if score use_soul_campfire campfire_settings matches 0 run scoreboard players set use_soul_campfire campfire_settings 1
execute if score use_soul_campfire campfire_settings matches 1 run tellraw @s {"text":"Enabled the use of Soul Campfires","bold":true,"color":"green"}
scoreboard players set campfire_settings_editing campfire_settings 0
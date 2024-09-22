##
 # disable_soul_campfire.mcfunction
 # 
 #
 # Created by RME.
##
execute if score use_soul_campfire campfire_settings matches 1 run scoreboard players set use_soul_campfire campfire_settings 0
execute if score use_soul_campfire campfire_settings matches 0 run tellraw @s {"text":"Disabled the use of Soul Campfires","bold":true,"color":"red"}
scoreboard players set campfire_settings_editing campfire_settings 0
##
 # tick.mcfunction
 # 
 #
 # Created by RME.
##
# Count down the cook_timer by 1 each tick
scoreboard players remove @e[scores={campfire_cook_timer=1..}] campfire_cook_timer 1
# Summon a leather item when the timer hits 0
# Summon movement depends on the entity number, for pseudo randomness
execute at @e[tag=campfire_entity1, scores={campfire_cook_timer=1}, limit=1, sort=nearest] if block ~ ~ ~ #minecraft:campfires run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:leather",Count:1b}, Motion:[0.07d,0.25d,0.01d]}
execute at @e[tag=campfire_entity2, scores={campfire_cook_timer=1}, limit=1, sort=nearest] if block ~ ~ ~ #minecraft:campfires run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:leather",Count:1b}, Motion:[-0.08d,0.25d,-0.05d]}
execute at @e[tag=campfire_entity3, scores={campfire_cook_timer=1}, limit=1, sort=nearest] if block ~ ~ ~ #minecraft:campfires run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:leather",Count:1b}, Motion:[0.02d,0.25d,-0.1d]}
execute at @e[tag=campfire_entity4, scores={campfire_cook_timer=1}, limit=1, sort=nearest] if block ~ ~ ~ #minecraft:campfires run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:leather",Count:1b}, Motion:[-0.04d,0.25d,0.01d]}

# Count down the kill_timer each tick
scoreboard players remove @e[scores={campfire_kill_timer=1..}] campfire_kill_timer 1
# Remove the enitity once the timer hits 0
execute as @e[scores={campfire_kill_timer=..1}, sort=nearest] at @s run function rme:campfire_leather/remove_entity
execute as @e[type=item] if items entity @s contents minecraft:rotten_flesh[minecraft:custom_data~{rme:removeThis}] run function rme:campfire_leather/remove_entity
execute run clear @p rotten_flesh[minecraft:custom_data~{rme:removeThis}]
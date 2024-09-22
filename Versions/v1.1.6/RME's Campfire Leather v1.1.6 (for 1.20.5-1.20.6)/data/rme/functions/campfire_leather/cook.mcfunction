##
 # cook.mcfunction
 # 
 #
 # Created by RME.
##
# Jesse we have to cook!
# Summon an entity on the campfire so that we can spawn items there
execute if block ~ ~ ~ #minecraft:campfires{Items:[{id:"minecraft:rotten_flesh"}]} if entity @e[distance=..1, tag=campfire_entity3] unless entity @e[distance=..1, tag=campfire_entity4] run summon minecraft:marker ~ ~ ~ {Tags:[campfire_entity, campfire_entity4]}
execute if block ~ ~ ~ #minecraft:campfires{Items:[{id:"minecraft:rotten_flesh"}]} if entity @e[distance=..1, tag=campfire_entity2] unless entity @e[distance=..1, tag=campfire_entity3] run summon minecraft:marker ~ ~ ~ {Tags:[campfire_entity, campfire_entity3]}
execute if block ~ ~ ~ #minecraft:campfires{Items:[{id:"minecraft:rotten_flesh"}]} if entity @e[distance=..1, tag=campfire_entity1] unless entity @e[distance=..1, tag=campfire_entity2] run summon minecraft:marker ~ ~ ~ {Tags:[campfire_entity, campfire_entity2]}
execute if block ~ ~ ~ #minecraft:campfires{Items:[{id:"minecraft:rotten_flesh"}]} unless entity @e[distance=..1, tag=campfire_entity1] run summon minecraft:marker ~ ~ ~ {Tags:[campfire_entity, campfire_entity1]}

# Set the timer on the entities to know when the cooking is done
execute unless entity @e[distance=..1, tag=campfire_entity1, scores={campfire_cook_timer=1..600}] run scoreboard players set @e[distance=..1, tag=campfire_entity1, limit=1] campfire_cook_timer 600
execute unless entity @e[distance=..1, tag=campfire_entity2, scores={campfire_cook_timer=1..600}] run scoreboard players set @e[distance=..1, tag=campfire_entity2, limit=1] campfire_cook_timer 600
execute unless entity @e[distance=..1, tag=campfire_entity3, scores={campfire_cook_timer=1..600}] run scoreboard players set @e[distance=..1, tag=campfire_entity3, limit=1] campfire_cook_timer 600
execute unless entity @e[distance=..1, tag=campfire_entity4, scores={campfire_cook_timer=1..600}] run scoreboard players set @e[distance=..1, tag=campfire_entity4, limit=1] campfire_cook_timer 600

# Set the timer after which we remove the entities
execute unless entity @e[distance=..1, tag=campfire_entity1, scores={campfire_kill_timer=1..601}] run scoreboard players set @e[distance=..1, tag=campfire_entity1, limit=1] campfire_kill_timer 601
execute unless entity @e[distance=..1, tag=campfire_entity2, scores={campfire_kill_timer=1..601}] run scoreboard players set @e[distance=..1, tag=campfire_entity2, limit=1] campfire_kill_timer 601
execute unless entity @e[distance=..1, tag=campfire_entity3, scores={campfire_kill_timer=1..601}] run scoreboard players set @e[distance=..1, tag=campfire_entity3, limit=1] campfire_kill_timer 601
execute unless entity @e[distance=..1, tag=campfire_entity4, scores={campfire_kill_timer=1..601}] run scoreboard players set @e[distance=..1, tag=campfire_entity4, limit=1] campfire_kill_timer 601
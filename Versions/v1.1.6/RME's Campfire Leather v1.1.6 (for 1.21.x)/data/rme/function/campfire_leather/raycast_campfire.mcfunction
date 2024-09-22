##
 # raycast_campfire.mcfunction
 # 
 # This raycasting function allows for edge cases where the recipe will go through but no function will fire, cba finding a solution for that
 # 
 # Created by RME.
##
# If we find a Campfire that is enabled move to the cooking function only if the random chance gets met
execute if score use_soul_campfire campfire_settings matches 1 if block ~ ~ ~ minecraft:soul_campfire[lit=true] align xyz positioned ~0.5 ~0.5 ~0.5 if predicate rme:campfire_leather/random_chance run function rme:campfire_leather/cook
execute if score use_campfire campfire_settings matches 1 if block ~ ~ ~ minecraft:campfire[lit=true] align xyz positioned ~0.5 ~0.5 ~0.5 if predicate rme:campfire_leather/random_chance run function rme:campfire_leather/cook

# If we find a Campfire that is disabled move to the canceling function
execute if score use_soul_campfire campfire_settings matches 0 if block ~ ~ ~ minecraft:soul_campfire[lit=true] as @s run function rme:campfire_leather/cancel
execute if score use_campfire campfire_settings matches 0 if block ~ ~ ~ minecraft:campfire[lit=true] as @s run function rme:campfire_leather/cancel

# If we find air move 0.2 blocks forward and try again
execute unless block ~ ~ ~ #minecraft:campfires[lit=true] positioned ^ ^ ^0.1 run function rme:campfire_leather/raycast_campfire
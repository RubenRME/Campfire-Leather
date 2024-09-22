##
 # on_use_campfire.mcfunction
 # 
 # 
 # Created by RME.
##
# Revoke the advancement so that it works every time we use the campfire
advancement revoke @s only rme:campfire_leather/use_campfire
# Initiate raycasting
execute as @s anchored eyes run function rme:campfire_leather/raycast_campfire
##
 # cancel.mcfunction
 # 
 #
 # Created by RME.
##
# Jesse we have to drop!
# Remove the rotten flesh from the campfire
data remove block ~ ~ ~ Items[{id:"minecraft:rotten_flesh"}]

# Give back the used rotten flesh so that the user doesn't lose an item
give @s minecraft:rotten_flesh 1
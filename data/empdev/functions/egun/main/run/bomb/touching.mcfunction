execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{touchingBomb:1b}}}] at @s run kill @e[tag=entity_model, tag=!set, sort=nearest, limit=1]
execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{touchingBomb:1b}}}] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["entity_model", "touching"], Invisible:1b}

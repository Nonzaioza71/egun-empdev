execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{gravityBomb:1b}}}] at @s run kill @e[tag=entity_model, tag=!set, sort=nearest, limit=1]
execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{gravityBomb:1b}}}] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["entity_model", "gravity_bomb"], Invisible:1b, ArmorItems:[{},{},{},{id:"minecraft:snowball", Count:1b, tag:{CustomModelData:4002}}]}
execute as @e[tag=gravity_bomb, tag=!timed] at @s run function empdev:egun/configs/timer.settings
# say 555
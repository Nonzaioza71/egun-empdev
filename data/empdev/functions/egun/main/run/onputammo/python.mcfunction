execute as @s at @s if entity @s[nbt={Inventory:[{id:"minecraft:iron_nugget", tag:{CustomModelData:1002}}]}] if score @s player.state.magazine.ammo matches 0.. run item modify entity @s weapon.mainhand empdev:python_mag/python_mag_put

execute as @s at @s if entity @s[nbt={Inventory:[{id:"minecraft:iron_nugget", tag:{CustomModelData:1002}}]}] run clear @s iron_nugget{CustomModelData:1002,Tags:[".357magnum_ammo"],EntityTag:{Invisible:1b},display:{Name:'[{"text":".357Magnum Ammo","italic":false}]'},HideFlags:5} 1 

execute as @s at @s unless entity @s[nbt={Inventory:[{id:"minecraft:iron_nugget", tag:{CustomModelData:1002}}]}] run playsound entity.player.attack.sweep player @s ~ ~ ~ 1 1 0
execute as @s at @s unless entity @s[nbt={Inventory:[{id:"minecraft:iron_nugget", tag:{CustomModelData:1002}}]}] run tellraw @s ["", {"text": "Not enough ammunition!", "color": "red"}]
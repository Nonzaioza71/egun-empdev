execute as @s at @s if entity @s[nbt={Inventory:[{id:"minecraft:iron_nugget", tag:{CustomModelData:1000}}]}] if score @s player.state.magazine.ammo matches 0..6 run item modify entity @s weapon.mainhand empdev:dot50/dot50_mag_put_more15
execute as @s at @s if entity @s[nbt={Inventory:[{id:"minecraft:iron_nugget", tag:{CustomModelData:1000}}]}] if score @s player.state.magazine.ammo matches 7 run item modify entity @s weapon.mainhand empdev:dot50/dot50_mag_put
execute as @s at @s if entity @s[nbt={Inventory:[{id:"minecraft:iron_nugget", tag:{CustomModelData:1000}}]}] if score @s player.state.magazine.ammo matches 8..10 run item modify entity @s weapon.mainhand empdev:dot50/dot50_mag_put_full

execute as @s at @s if entity @s[nbt={Inventory:[{id:"minecraft:iron_nugget", tag:{CustomModelData:1000}}]}] run clear @s iron_nugget{CustomModelData:1000,Tags:[".50_ammo"],EntityTag:{Invisible:1b},display:{Name:'[{"text":".50 Ammo","italic":false}]'},HideFlags:5} 1 

execute as @s at @s unless entity @s[nbt={Inventory:[{id:"minecraft:iron_nugget", tag:{CustomModelData:1000}}]}] run playsound entity.player.attack.sweep player @s ~ ~ ~ 1 1 0
execute as @s at @s unless entity @s[nbt={Inventory:[{id:"minecraft:iron_nugget", tag:{CustomModelData:1000}}]}] run tellraw @s ["", {"text": "Not enough ammunition!", "color": "red"}]
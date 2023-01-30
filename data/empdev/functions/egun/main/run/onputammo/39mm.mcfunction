execute as @s at @s if entity @s[nbt={Inventory:[{id:"minecraft:iron_nugget", tag:{CustomModelData:1001}}]}] if score @s player.state.magazine.ammo matches 0..24 run item modify entity @s weapon.mainhand empdev:39mm/39mm_mag_put

execute as @s at @s if entity @s[nbt={Inventory:[{id:"minecraft:iron_nugget", tag:{CustomModelData:1001}}]}] run clear @s iron_nugget{CustomModelData:1001,Tags:["39mm_ammo"],EntityTag:{Invisible:1b},display:{Name:'[{"text":"7.62x39mm Ammo","italic":false}]'},HideFlags:5} 1 

execute as @s at @s unless entity @s[nbt={Inventory:[{id:"minecraft:iron_nugget", tag:{CustomModelData:1001}}]}] run playsound entity.player.attack.sweep player @s ~ ~ ~ 1 1 0
execute as @s at @s unless entity @s[nbt={Inventory:[{id:"minecraft:iron_nugget", tag:{CustomModelData:1001}}]}] run tellraw @s ["", {"text": "Not enough ammunition!", "color": "red"}]
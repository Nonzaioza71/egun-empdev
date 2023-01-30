# say 44
scoreboard objectives add calculate.39mm.result dummy
scoreboard objectives add calculate.39mm.damgage dummy

scoreboard players add @s calculate.39mm.result 0
scoreboard players add @s calculate.39mm.damgage 0

# execute as @s at @s store result score @s calculate.39mm.result run scoreboard players get @s 39mm_mag.maximum.damage
# execute as @s at @s store result score @s calculate.39mm.damgage run data get entity @s Inventory[{Slot:-106b}].tag.Damage
# execute as @s at @s store result score @s player.state.magazine.ammo run scoreboard players operation @s calculate.39mm.result -= @s calculate.39mm.damgage

execute as @s at @s store result score @s calculate.39mm.result run scoreboard players get @s 39mm_mag.maximum
execute as @s at @s store result score @s calculate.39mm.damgage run data get entity @s Inventory[{Slot:-106b}].tag.Damage

scoreboard players operation @s calculate.39mm.damgage *= @s 39mm_mag.maximum
scoreboard players operation @s calculate.39mm.damgage /= @s 39mm_mag.maximum.damage

execute as @s at @s store result score @s player.state.magazine.ammo run scoreboard players operation @s calculate.39mm.result -= @s calculate.39mm.damgage
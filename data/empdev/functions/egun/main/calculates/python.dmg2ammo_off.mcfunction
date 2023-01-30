# say 44
scoreboard objectives add calculate.python.result dummy
scoreboard objectives add calculate.python.damgage dummy

scoreboard players add @s calculate.python.result 0
scoreboard players add @s calculate.python.damgage 0

# execute as @s at @s store result score @s calculate.python.result run scoreboard players get @s python_mag.maximum.damage
# execute as @s at @s store result score @s calculate.python.damgage run data get entity @s Inventory[{Slot:-106b}].tag.Damage
# execute as @s at @s store result score @s player.state.magazine.ammo run scoreboard players operation @s calculate.python.result -= @s calculate.python.damgage

execute as @s at @s store result score @s calculate.python.result run scoreboard players get @s python_mag.maximum
execute as @s at @s store result score @s calculate.python.damgage run data get entity @s Inventory[{Slot:-106b}].tag.Damage

scoreboard players operation @s calculate.python.damgage *= @s python_mag.maximum
scoreboard players operation @s calculate.python.damgage /= @s python_mag.maximum.damage

execute as @s at @s store result score @s player.state.magazine.ammo run scoreboard players operation @s calculate.python.result -= @s calculate.python.damgage
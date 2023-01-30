# say 55
scoreboard objectives add calculate.dot50.result dummy
scoreboard objectives add calculate.dot50.damgage dummy

scoreboard players add @s calculate.dot50.result 0
scoreboard players add @s calculate.dot50.damgage 0

# execute as @s at @s store result score @s calculate.dot50.result run scoreboard players get @s dot50_mag.maximum.damage
# execute as @s at @s store result score @s calculate.dot50.damgage run data get entity @s Inventory[{Slot:-106b}].tag.Damage
# execute as @s at @s store result score @s player.state.magazine.ammo run scoreboard players operation @s calculate.dot50.result -= @s calculate.dot50.damgage

execute as @s at @s store result score @s calculate.dot50.result run scoreboard players get @s dot50_mag.maximum
execute as @s at @s store result score @s calculate.dot50.damgage run data get entity @s SelectedItem.tag.Damage

scoreboard players operation @s calculate.dot50.damgage *= @s dot50_mag.maximum
scoreboard players operation @s calculate.dot50.damgage /= @s dot50_mag.maximum.damage

execute as @s at @s store result score @s player.state.magazine.ammo run scoreboard players operation @s calculate.dot50.result -= @s calculate.dot50.damgage
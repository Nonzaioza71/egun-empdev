# say 55
scoreboard objectives add calculate.deagle.result dummy
scoreboard objectives add calculate.deagle.damgage dummy

scoreboard players add @s calculate.deagle.result 0
scoreboard players add @s calculate.deagle.damgage 0

# execute as @s at @s store result score @s calculate.deagle.result run scoreboard players get @s deagle_mag.maximum.damage
# execute as @s at @s store result score @s calculate.deagle.damgage run data get entity @s Inventory[{Slot:-106b}].tag.Damage
# execute as @s at @s store result score @s player.state.magazine.ammo run scoreboard players operation @s calculate.deagle.result -= @s calculate.deagle.damgage

execute as @s at @s store result score @s calculate.deagle.result run scoreboard players get @s deagle_mag.maximum
execute as @s at @s store result score @s calculate.deagle.damgage run data get entity @s SelectedItem.tag.Damage

scoreboard players operation @s calculate.deagle.damgage *= @s deagle_mag.maximum
scoreboard players operation @s calculate.deagle.damgage /= @s deagle_mag.maximum.damage

execute as @s at @s store result score @s player.state.magazine.ammo run scoreboard players operation @s calculate.deagle.result -= @s calculate.deagle.damgage
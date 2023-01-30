execute as @a at @s store result score @s player.state.inhand.gun run data get entity @s SelectedItem.tag.CustomModelData
execute as @a at @s store result score @s player.state.offhand.gun run data get entity @s Inventory[{Slot:-106b}].tag.CustomModelData

execute as @a at @s if score @s player.state.inhand.gun = @s item.id.dot50_mag store result score @s player.state.magazine.maximum run scoreboard players get @s dot50_mag.maximum

execute as @a if score @s player.state.rc.random matches 0..10 run scoreboard players add @s player.state.rc.random 1
execute as @a unless score @s player.state.rc.random matches 0..10 run scoreboard players set @s player.state.rc.random 0

execute as @a at @s store result score @s player.state.offhand.magazine run data get entity @s Inventory[{Slot:-106b}].tag.CustomModelData
# execute as @a at @s if score @s player.state.offhand.magazine matches 2000..2999 store result score @s player.state.magazine.ammo run data get entity @s Inventory[{Slot:-106b}].tag.Damage

execute as @a at @s store result score @s player.state.magazine.damage run data get entity @s SelectedItem.tag.Damage
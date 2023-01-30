execute as @s at @s if score @s player.state.inhand.gun matches 2000 if score @s player.state.magazine.damage matches 1.. run function empdev:egun/main/run/onputammo/dot50
execute as @s at @s if score @s player.state.inhand.gun matches 2001 if score @s player.state.magazine.damage matches 1.. run function empdev:egun/main/run/onputammo/39mm
execute as @s at @s if score @s player.state.inhand.gun matches 2002 if score @s player.state.magazine.damage matches 1.. run function empdev:egun/main/run/onputammo/deagle
execute as @s at @s if score @s player.state.inhand.gun matches 2003 if score @s player.state.magazine.damage matches 1.. run function empdev:egun/main/run/onputammo/python

playsound minecraft:item.armor.equip_netherite player @a ~ ~ ~ 1 2 0
scoreboard players set @s player.state.used.put.magazine 0
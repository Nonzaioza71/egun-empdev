execute as @a at @s unless score @s player.state.offhand.magazine matches 2000..2999 run scoreboard players set @s player.state.magazine.ammo 0

execute as @a at @s if score @s player.state.offhand.magazine = @s item.id.dot50_mag run function empdev:egun/main/calculates/dot50.dmg2ammo_off
execute as @a at @s if score @s player.state.inhand.gun = @s item.id.dot50_mag run function empdev:egun/main/calculates/dot50.dmg2ammo_main

execute as @a at @s if score @s player.state.offhand.magazine = @s item.id.39mm_mag run function empdev:egun/main/calculates/39mm.dmg2ammo_off
execute as @a at @s if score @s player.state.inhand.gun = @s item.id.39mm_mag run function empdev:egun/main/calculates/39mm.dmg2ammo_main

execute as @a at @s if score @s player.state.offhand.magazine = @s item.id.deagle_mag run function empdev:egun/main/calculates/deagle.dmg2ammo_off
execute as @a at @s if score @s player.state.inhand.gun = @s item.id.deagle_mag run function empdev:egun/main/calculates/deagle.dmg2ammo_main

execute as @a at @s if score @s player.state.offhand.magazine = @s item.id.python_mag run function empdev:egun/main/calculates/python.dmg2ammo_off
execute as @a at @s if score @s player.state.inhand.gun = @s item.id.python_mag run function empdev:egun/main/calculates/python.dmg2ammo_main

execute as @e at @s store result score @s entity.state.onGround run data get entity @s OnGround
# execute as @a at @s unless score @s player.state.inhand.gun matches 2000..2999 run scoreboard players set @s player.state.magazine.ammo 0

function empdev:egun/main/calculates/effect.spinner
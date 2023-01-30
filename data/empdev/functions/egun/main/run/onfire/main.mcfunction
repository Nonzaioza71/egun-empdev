tag @s add checkGunAndBullet

execute as @s if score @s player.state.offhand.magazine = @s item.id.dot50_mag if score @s player.state.inhand.gun = @s item.id.m107 run function empdev:egun/main/run/onfire/m107
execute as @s if score @s player.state.offhand.magazine = @s item.id.dot50_mag if score @s player.state.inhand.gun = @s item.id.m107.running run function empdev:egun/main/run/onfire/m107
execute as @s if score @s player.state.offhand.magazine = @s item.id.dot50_mag if score @s player.state.inhand.gun = @s item.id.m107.onscope run function empdev:egun/main/run/onfire/m107.onscope

execute as @s if score @s player.state.offhand.magazine = @s item.id.39mm_mag if score @s player.state.inhand.gun = @s item.id.akm run function empdev:egun/main/run/onfire/akm
execute as @s if score @s player.state.offhand.magazine = @s item.id.39mm_mag if score @s player.state.inhand.gun = @s item.id.akm.running run function empdev:egun/main/run/onfire/akm
execute as @s if score @s player.state.offhand.magazine = @s item.id.39mm_mag if score @s player.state.inhand.gun = @s item.id.akm.onscope run function empdev:egun/main/run/onfire/akm.onscope

execute as @s if score @s player.state.offhand.magazine = @s item.id.deagle_mag if score @s player.state.inhand.gun = @s item.id.deagle run function empdev:egun/main/run/onfire/deagle
execute as @s if score @s player.state.offhand.magazine = @s item.id.deagle_mag if score @s player.state.inhand.gun = @s item.id.deagle.running run function empdev:egun/main/run/onfire/deagle
execute as @s if score @s player.state.offhand.magazine = @s item.id.deagle_mag if score @s player.state.inhand.gun = @s item.id.deagle.onscope run function empdev:egun/main/run/onfire/deagle.onscope

execute as @s if score @s player.state.offhand.magazine = @s item.id.python_mag if score @s player.state.inhand.gun = @s item.id.python run function empdev:egun/main/run/onfire/python
execute as @s if score @s player.state.offhand.magazine = @s item.id.python_mag if score @s player.state.inhand.gun = @s item.id.python.running run function empdev:egun/main/run/onfire/python
execute as @s if score @s player.state.offhand.magazine = @s item.id.python_mag if score @s player.state.inhand.gun = @s item.id.python.onscope run function empdev:egun/main/run/onfire/python.onscope


execute as @s[tag=checkGunAndBullet] run scoreboard players set @s gun.on.fire 0
execute as @s[tag=checkGunAndBullet] run scoreboard players set @s player.state.fire.cooldown 0
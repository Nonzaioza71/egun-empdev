execute as @a[scores={gun.on.fire=1..}] at @s if score @s player.state.fire.cooldown matches ..0 if score @s player.state.isrunning matches ..0 if score @s player.state.magazine.ammo matches 1.. run function empdev:egun/main/run/onfire/main
execute as @a[scores={gun.on.fire=1..}] at @s if score @s player.state.fire.cooldown matches ..0 if score @s player.state.isrunning matches ..0 if score @s player.state.magazine.ammo matches ..0 run playsound block.iron_trapdoor.open player @a ~ ~ ~ 1 1.5 0
execute as @a[scores={gun.on.fire=1..}] at @s if score @s player.state.fire.cooldown matches ..0 if score @s player.state.isrunning matches ..0 if score @s player.state.magazine.ammo matches ..0 run scoreboard players set @s gun.on.fire 0
execute as @a[scores={gun.on.fire=1..}] at @s unless score @s player.state.fire.cooldown matches ..0 run scoreboard players set @s gun.on.fire 0


execute as @a[scores={player.state.fire.cooldown=1..}] at @s run scoreboard players remove @s player.state.fire.cooldown 1
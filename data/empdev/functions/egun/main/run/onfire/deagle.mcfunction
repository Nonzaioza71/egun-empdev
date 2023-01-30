execute as @s store result score @s player.now.damage run scoreboard players get @s deagle.damage

execute as @s at @s if score @s player.state.magazine.ammo matches 1..2 run item modify entity @s weapon.offhand empdev:deagle_mag/deagle_mag_fire_more15
execute as @s at @s if score @s player.state.magazine.ammo matches 3..6 run item modify entity @s weapon.offhand empdev:deagle_mag/deagle_mag_fire
execute as @s at @s if score @s player.state.magazine.ammo matches 7.. run item modify entity @s weapon.offhand empdev:deagle_mag/deagle_mag_fire_more15

execute as @s at @s run summon arrow ^ ^1.25 ^0.75 {Tags:["bullet_projectile", "bullet"], damage: 3.25}
execute as @s at @s run playsound custom:deagle_fire player @a ~ ~ ~ 2 1 0

execute as @s at @s if score @s player.state.rc.random matches 0 run tp @s ~ ~ ~ facing ^ ^1 ^10
execute as @s at @s if score @s player.state.rc.random matches 1 run tp @s ~ ~ ~ facing ^.25 ^1 ^10
execute as @s at @s if score @s player.state.rc.random matches 2 run tp @s ~ ~ ~ facing ^-.25 ^1 ^10
execute as @s at @s if score @s player.state.rc.random matches 3 run tp @s ~ ~ ~ facing ^.25 ^2 ^10
execute as @s at @s if score @s player.state.rc.random matches 4 run tp @s ~ ~ ~ facing ^-.25 ^2 ^10
execute as @s at @s if score @s player.state.rc.random matches 5 run tp @s ~ ~ ~ facing ^.5 ^1 ^10
execute as @s at @s if score @s player.state.rc.random matches 6 run tp @s ~ ~ ~ facing ^-.5 ^1 ^10
execute as @s at @s if score @s player.state.rc.random matches 7 run tp @s ~ ~ ~ facing ^.5 ^2 ^10
execute as @s at @s if score @s player.state.rc.random matches 8 run tp @s ~ ~ ~ facing ^-.5 ^2 ^10
execute as @s at @s if score @s player.state.rc.random matches 9 run tp @s ~ ~ ~ facing ^.75 ^1 ^10
execute as @s at @s if score @s player.state.rc.random matches 10 run tp @s ~ ~ ~ facing ^-.75 ^1 ^10

execute as @s at @s run tag @s add startCoutTimeHit

execute as @s run scoreboard players operation @s player.state.fire.cooldown = @s deagle.fire_rate
execute as @s run scoreboard players set @s gun.on.fire 0

tag @s remove checkGunAndBullet
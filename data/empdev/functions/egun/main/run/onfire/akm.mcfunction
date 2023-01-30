execute as @s store result score @s player.now.damage run scoreboard players get @s akm.damage

execute as @s at @s if score @s player.state.magazine.ammo matches 1.. run item modify entity @s weapon.offhand empdev:39mm/39mm_mag_fire

execute as @s at @s run summon arrow ^ ^1.25 ^0.75 {Tags:["bullet_projectile", "bullet"], Color:-1}
execute as @s at @s run playsound custom:ak_fire player @a ~ ~ ~ 2 1 0

execute as @s at @s if score @s player.state.rc.random matches 0 run tp @s ~ ~ ~ facing ^ ^0.25 ^10
execute as @s at @s if score @s player.state.rc.random matches 1 run tp @s ~ ~ ~ facing ^0.25 ^0.25 ^10
execute as @s at @s if score @s player.state.rc.random matches 2 run tp @s ~ ~ ~ facing ^-0.25 ^0.25 ^10
execute as @s at @s if score @s player.state.rc.random matches 3 run tp @s ~ ~ ~ facing ^0.25 ^0.50 ^10
execute as @s at @s if score @s player.state.rc.random matches 4 run tp @s ~ ~ ~ facing ^-0.25 ^0.50 ^10
execute as @s at @s if score @s player.state.rc.random matches 5 run tp @s ~ ~ ~ facing ^0.50 ^0.25 ^10
execute as @s at @s if score @s player.state.rc.random matches 6 run tp @s ~ ~ ~ facing ^-0.50 ^0.25 ^10
execute as @s at @s if score @s player.state.rc.random matches 7 run tp @s ~ ~ ~ facing ^0.50 ^0.50 ^10
execute as @s at @s if score @s player.state.rc.random matches 8 run tp @s ~ ~ ~ facing ^-0.50 ^0.50 ^10
execute as @s at @s if score @s player.state.rc.random matches 9 run tp @s ~ ~ ~ facing ^0.75 ^0.25 ^10
execute as @s at @s if score @s player.state.rc.random matches 10 run tp @s ~ ~ ~ facing ^-0.75 ^0.25 ^10

execute as @s at @s run tag @s add startCoutTimeHit

execute as @s run scoreboard players operation @s player.state.fire.cooldown = @s akm.fire_rate
execute as @s run scoreboard players set @s gun.on.fire 0

tag @s remove checkGunAndBullet
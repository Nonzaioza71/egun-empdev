execute as @s store result score @s player.now.damage run scoreboard players get @s m107.damage

execute as @s at @s if score @s player.state.magazine.ammo matches 1..2 run item modify entity @s weapon.offhand empdev:dot50/dot50_mag_fire_more15
execute as @s at @s if score @s player.state.magazine.ammo matches 3..6 run item modify entity @s weapon.offhand empdev:dot50/dot50_mag_fire
execute as @s at @s if score @s player.state.magazine.ammo matches 7.. run item modify entity @s weapon.offhand empdev:dot50/dot50_mag_fire_more15

execute as @s at @s run summon arrow ^ ^1.25 ^0.75 {Tags:["bullet_projectile", "bullet"], damage: 4}
execute as @s at @s run playsound custom:m107_fire player @a ~ ~ ~ 2 1 0

execute as @s at @s run tag @s add startCoutTimeHit

execute as @s run scoreboard players operation @s player.state.fire.cooldown = @s m107.fire_rate
execute as @s run scoreboard players set @s gun.on.fire 0

tag @s remove checkGunAndBullet
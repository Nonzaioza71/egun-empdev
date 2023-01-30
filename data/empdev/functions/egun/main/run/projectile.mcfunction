# execute as @s run say Fire!!

execute as @s at @s store result score @s Motion.x1 run data get entity @s Pos[0] 1000
execute as @s at @s store result score @s Motion.y1 run data get entity @s Pos[1] 1000
execute as @s at @s store result score @s Motion.z1 run data get entity @s Pos[2] 1000

execute as @s at @s store result score @s Motion.x1 run scoreboard players operation @s Motion.x1 *= @p player.now.damage
execute as @s at @s store result score @s Motion.y1 run scoreboard players operation @s Motion.y1 *= @p player.now.damage
execute as @s at @s store result score @s Motion.z1 run scoreboard players operation @s Motion.z1 *= @p player.now.damage

execute as @s at @s run data modify entity @s Rotation set from entity @p Rotation
execute as @s at @s run tp ^ ^ ^0.1

execute as @s at @s store result score @s Motion.x2 run data get entity @s Pos[0] 1000
execute as @s at @s store result score @s Motion.y2 run data get entity @s Pos[1] 1000
execute as @s at @s store result score @s Motion.z2 run data get entity @s Pos[2] 1000

execute as @s at @s store result score @s Motion.x2 run scoreboard players operation @s Motion.x2 *= @p player.now.damage
execute as @s at @s store result score @s Motion.y2 run scoreboard players operation @s Motion.y2 *= @p player.now.damage
execute as @s at @s store result score @s Motion.z2 run scoreboard players operation @s Motion.z2 *= @p player.now.damage

execute as @s at @s store result entity @s Motion[0] double 0.001 run scoreboard players operation @s Motion.x2 -= @s Motion.x1
execute as @s at @s store result entity @s Motion[1] double 0.001 run scoreboard players operation @s Motion.y2 -= @s Motion.y1
execute as @s at @s store result entity @s Motion[2] double 0.001 run scoreboard players operation @s Motion.z2 -= @s Motion.z1

execute as @s run tag @s add detected
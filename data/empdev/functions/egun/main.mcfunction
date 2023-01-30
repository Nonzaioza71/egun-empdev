function empdev:egun/main/detect/projectile
function empdev:egun/main/detect/onfire
function empdev:egun/main/detect/on.put.ammo
function empdev:egun/main/detect/bomb.finder
function empdev:egun/main/detect/bomb.impact
function empdev:egun/main/calculates/main

function empdev:egun/main/run/player.state
function empdev:egun/main/run/gunmodel
function empdev:egun/main/detect/player.state

function empdev:egun/configs/main

execute as @e[tag=bullet] at @s run particle crit ~ ~ ~ 0.001 0.001 0.001 0 1 normal @a
execute as @e[tag=bullet, nbt={inGround:1b}] at @s run particle cloud ~ ~ ~ 0.1 0.25 0.1 0 4 normal @a
execute as @e[tag=bullet, nbt={inGround:1b}] at @s run particle flame ~ ~ ~ 0.01 0.01 0.01 0 4 normal @a
# execute as @e[tag=bullet, nbt={inGround:1b}] at @s run summon armor_stand ~ ~ ~
execute as @e[tag=bullet, nbt={inGround:1b}] at @s run tag @a remove startCoutTimeHit
execute as @e[tag=bullet, nbt={inGround:1b}] run kill @s

execute as @a[tag=startCoutTimeHit] at @s run scoreboard players add @s globals.logData.TimeHit 1
# say 555
# summon snowball ~ ~ ~ {Passengers:[{id:"minecraft:armor_stand"}]}
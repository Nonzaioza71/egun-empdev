execute as @e[tag=entity_model, tag=touching] store result score @s entity.state.onGround run data get entity @s OnGround
execute as @e[tag=entity_model, tag=touching] at @s unless entity @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{touchingBomb:1b}}}, distance=..0.5] run tag @s add set
execute as @e[tag=entity_model, tag=touching] at @s unless entity @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{touchingBomb:1b}}}, distance=..0.5] if score $setting.explosion.breakblock setting.explosion.breakblock matches 0 run gamerule mobGriefing true
execute as @e[tag=entity_model, tag=touching] at @s unless entity @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{touchingBomb:1b}}}, distance=..0.5] if score $setting.explosion.breakblock setting.explosion.breakblock matches 1.. run gamerule mobGriefing false
execute as @e[tag=entity_model, tag=touching] at @s unless entity @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{touchingBomb:1b}}}, distance=..0.5] run summon minecraft:creeper ~ ~ ~ {powered:0, Fuse:0, ExplosionRadius:2}
execute as @e[tag=entity_model, tag=touching] at @s unless entity @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{touchingBomb:1b}}}, distance=..0.5] if score $setting.explosion.breakblock setting.explosion.breakblock matches 1.. run schedule function empdev:egun/main/functions/gamerule.mob_griefing 2t replace
execute as @e[tag=entity_model, tag=touching] at @s unless entity @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{touchingBomb:1b}}}, distance=..0.5] run kill @s


execute as @e[tag=entity_model, tag=gravity_bomb] at @s if score @s entity.state.onGround matches 1.. run tag @s add set
execute as @e[tag=entity_model, tag=gravity_bomb] at @s if score @s item.state.timer matches ..180 run scoreboard players remove @s item.state.timer 1
execute as @e[tag=entity_model, tag=gravity_bomb] at @s if score @s item.state.timer matches 80..160 run particle minecraft:soul_fire_flame ~ ~ ~ 11 0 11 0 2 normal
execute as @e[tag=entity_model, tag=gravity_bomb] at @s if score @s item.state.timer matches 15..80 run particle minecraft:flame ~ ~ ~ 11 0 11 0 4 normal
execute as @e[tag=entity_model, tag=gravity_bomb] at @s if score @s item.state.timer matches 30..160 run particle minecraft:portal ~ ~.25 ~ 0 0 0 2 2 normal
execute as @e[tag=entity_model, tag=gravity_bomb] at @s if score @s item.state.timer matches 30..80 run particle minecraft:portal ~ ~.25 ~ 0 0 0 4 50 normal
execute as @e[tag=entity_model, tag=gravity_bomb] at @s if score @s item.state.timer matches 1..80 run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 normal
execute as @e[tag=entity_model, tag=gravity_bomb] at @s if score @s item.state.timer matches 160 run playsound minecraft:block.portal.trigger player @a ~ ~ ~ 2 0.5
execute as @e[tag=entity_model, tag=gravity_bomb] at @s if score @s item.state.timer matches 160 run summon armor_stand ~ ~ ~ {Tags:["spinner", "effect"], Invisible:1b, Marker:1b}
execute as @e[tag=entity_model, tag=gravity_bomb] at @s if score @s item.state.timer matches 30..80 run effect give @e[distance=0..20] slowness 2 9 true
execute as @e[tag=entity_model, tag=gravity_bomb] at @s if score @s item.state.timer matches 0..160 run effect give @e[distance=16..20] slowness 2 1 true
execute as @e[tag=entity_model, tag=gravity_bomb] at @s if score @s item.state.timer matches 0..160 run effect give @e[distance=11..15] slowness 2 2 true
execute as @e[tag=entity_model, tag=gravity_bomb] at @s if score @s item.state.timer matches 0..160 run effect give @e[distance=6..10] slowness 2 3 true
execute as @e[tag=entity_model, tag=gravity_bomb] at @s if score @s item.state.timer matches 0..160 run effect give @e[distance=0..5] slowness 2 4 true
execute as @e[tag=entity_model, tag=gravity_bomb] at @s if score @s item.state.timer matches 0..160 run effect give @e[distance=0..15] jump_boost 2 250 true
execute as @e[tag=entity_model, tag=gravity_bomb] at @s if score @s item.state.timer matches ..0 if score $setting.explosion.breakblock setting.explosion.breakblock matches 0 run gamerule mobGriefing true
execute as @e[tag=entity_model, tag=gravity_bomb] at @s if score @s item.state.timer matches ..0 if score $setting.explosion.breakblock setting.explosion.breakblock matches 1.. run gamerule mobGriefing false
execute as @e[tag=entity_model, tag=gravity_bomb] at @s if score @s item.state.timer matches ..0 run summon minecraft:creeper ~ ~ ~ {powered:1, Fuse:0, ExplosionRadius:6}
execute as @e[tag=entity_model, tag=gravity_bomb] at @s if score @s item.state.timer matches ..0 if score $setting.explosion.breakblock setting.explosion.breakblock matches 1.. run schedule function empdev:egun/main/functions/gamerule.mob_griefing 2t replace
execute as @e[tag=entity_model, tag=gravity_bomb] at @s if score @s item.state.timer matches ..0 run particle explosion ~ ~3 ~ 10 4 10 0 300 normal @a
execute as @e[tag=entity_model, tag=gravity_bomb] at @s if score @s item.state.timer matches ..0 run particle smoke ~ ~3 ~ 10 1 10 0 600 normal @a
execute as @e[tag=entity_model, tag=gravity_bomb] at @s if score @s item.state.timer matches ..0 run kill @s
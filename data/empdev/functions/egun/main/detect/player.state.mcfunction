execute as @a[scores={player.state.isrunning=1..}] at @s run function empdev:egun/main/run/onrunning/main 
execute as @a[scores={player.state.isrunning=..0}] at @s run function empdev:egun/main/run/notrunning/main
execute as @a[scores={player.state.isrunning=3..}] at @s run scoreboard players set @s player.state.isrunning 2
execute as @a[scores={player.state.isrunning=1..}] at @s run scoreboard players remove @s player.state.isrunning 1

execute as @a[scores={player.state.issneak=1..}] at @s run function empdev:egun/main/run/onscope/main 
execute as @a[scores={player.state.issneak=..0}] at @s run function empdev:egun/main/run/notscope/main
execute as @a[scores={player.state.issneak=3..}] at @s run scoreboard players set @s player.state.issneak 2
execute as @a[scores={player.state.issneak=1..}] at @s run scoreboard players remove @s player.state.issneak 1
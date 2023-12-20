
execute at @s[type=marker,tag=wallmarker] run setblock ~ ~ ~ amethyst_block keep
execute as @s[scores={obj=85..}] at @s run setblock ~ ~ ~ air destroy
kill @s[tag=wallmarker,scores={obj=85..}]
scoreboard players add @s obj 1
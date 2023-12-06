scoreboard players remove @s healing 1
effect give @s minecraft:regeneration 1 255 true
execute at @s run playsound minecraft:block.amethyst_block.chime master @a[distance=..15] ~ ~ ~ 2 1.5
execute at @s run particle minecraft:heart ~ ~1.8 ~ 0.3 0.1 0.3 100 1 force

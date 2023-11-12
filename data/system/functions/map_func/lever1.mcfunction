
scoreboard players add .leverTimer obj 1


execute if score .leverTimer obj matches 1 run setblock 515 1 497 air 
execute if score .leverTimer obj matches 1 run setblock 515 5 497 air 
execute if score .leverTimer obj matches 1 as @e[type=area_effect_cloud, tag = Lever] at @s run playsound block.iron_door.open master @a[distance=..15] ~ ~ ~ 100 0.1
execute if score .leverTimer obj matches 1 run fill 518 3 494 519 3 493 air
execute if score .leverTimer obj matches 1 as @e[type=area_effect_cloud, tag = Lever] at @s run particle campfire_cosy_smoke ~ ~ ~ 0 0 0 0 2 

execute if score .leverTimer obj matches 185 run setblock 515 5 497 lever[powered=false,facing=east,face=floor] 
execute if score .leverTimer obj matches 180 run setblock 515 1 497 redstone_block
execute if score .leverTimer obj matches 180 run fill 518 3 494 519 3 493 stone
execute if score .leverTimer obj matches 180 as @e[type=area_effect_cloud, tag = Lever] at @s run playsound block.iron_door.close master @a[distance=..15] ~ ~ ~ 100 0.1

# loop condition
execute if score .leverTimer obj matches ..200 run schedule function system:map_func/lever1 1t
execute if score .leverTimer obj matches 201 run scoreboard players reset .leverTimer obj
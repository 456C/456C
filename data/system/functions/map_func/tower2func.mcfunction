
# tower 1
execute at @s if score .tower2 obj matches 0 run tellraw @a[distance=..100] {"text":"Rage Tower is inactive ","color":"red"}
execute at @s if score .tower2 obj matches 1 run tellraw @a[distance=..100] {"text":"Rage Tower is active again","color":"green"}
execute at @s if score .tower2 obj matches 2 run tellraw @a[distance=..100] {"text":"Rage Tower has been captured","color":"yellow"}

execute at @s if score .tower2 obj matches 0 run setblock ~ ~ ~ dark_prismarine
execute at @s if score .tower2 obj matches 0 run setblock ~ ~-7 ~ dark_prismarine
execute at @s if score .tower2 obj matches 0 run playsound block.beacon.deactivate master @a[distance=..100] ~ ~ ~ 100 0.4

execute at @s if score .tower2 obj matches 1 run setblock ~ ~ ~ white_stained_glass 
execute at @s if score .tower2 obj matches 1 run setblock ~ ~-7 ~ white_stained_glass 
execute at @s if score .tower2 obj matches 1 run playsound block.beacon.activate master @a[distance=..100] ~ ~ ~ 100 0.4

# team captured
# execute at @s if score .tower2 obj matches 2 run setblock ~ ~-7 ~ yellow_stained_glass 
# execute at @s if score .tower2 obj matches 2 run setblock ~ ~ ~ yellow_stained_glass
execute at @e[type=marker,tag=tower2] if score .tower2 obj matches 2 run playsound block.beacon.power_select master @a[distance=..100] ~ ~ ~ 100 0.4 


execute at @s if score .tower2 obj matches 3 run setblock ~ ~-7 ~ black_stained_glass 
execute at @s if score .tower2 obj matches 3 run setblock ~ ~ ~ black_stained_glass 
execute at @s if score .tower2 obj matches 3 run playsound block.beacon.activate master @a[distance=..100] ~ ~ ~ 100 0.4
execute at @s if score .tower2 obj matches 1 run playsound block.bell.resonate master @a[distance=..100] ~ ~ ~ 10 0.1

# reset
scoreboard players reset .tower2 obj
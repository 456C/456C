execute at @s run setblock ~ ~-7 ~ lime_stained_glass 
execute at @s run setblock ~ ~ ~ lime_stained_glass

execute at @s[tag=tower1] run tellraw @a {"text":"Team Lime now owns Weakness","color":"green"}
execute at @s[tag=tower2] run tellraw @a {"text":"Team Lime now owns Rage","color":"green"}
execute at @s[tag=tower3] run tellraw @a {"text":"Team Lime now owns Swiftness","color":"green"}

tag @s[tag=tower1] add lime1
tag @s[tag=tower2] add lime2
tag @s[tag=tower3] add lime3

execute at @s run playsound block.beacon.power_select master @a[distance=..100] ~ ~ ~ 100 0.4 
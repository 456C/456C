execute at @s run setblock ~ ~-7 ~ magenta_stained_glass 
execute at @s run setblock ~ ~ ~ magenta_stained_glass

execute at @s[tag=tower1] run tellraw @a[distance=..100] {"text":"Team Magenta now owns Weakness","color":"light_purple"}
execute at @s[tag=tower2] run tellraw @a[distance=..100] {"text":"Team Magenta now owns Rage","color":"light_purple"}
execute at @s[tag=tower3] run tellraw @a[distance=..100] {"text":"Team Magenta now owns Swiftness","color":"light_purple"}

tag @s[tag=tower1] add magenta1
tag @s[tag=tower2] add magenta2
tag @s[tag=tower3] add magenta3

execute at @s run playsound block.beacon.power_select master @a[distance=..100] ~ ~ ~ 200 0.0 
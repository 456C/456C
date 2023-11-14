execute at @s run setblock ~ ~-7 ~ light_blue_stained_glass 
execute at @s run setblock ~ ~ ~ light_blue_stained_glass


execute at @s[tag=tower1] run tellraw @a[distance=..100] {"text":"Team Teal now owns Weakness","color":"aqua"}
execute at @s[tag=tower2] run tellraw @a[distance=..100] {"text":"Team Teal now owns Rage","color":"aqua"}
execute at @s[tag=tower3] run tellraw @a[distance=..100] {"text":"Team Teal now owns Swiftness","color":"aqua"}

tag @s[tag=tower1] add teal1
tag @s[tag=tower2] add teal2
tag @s[tag=tower3] add teal3

execute at @s run playsound block.beacon.power_select master @a[distance=..100] ~ ~ ~ 100 0.4 
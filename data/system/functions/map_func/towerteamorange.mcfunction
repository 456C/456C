execute at @s run setblock ~ ~-7 ~ orange_stained_glass 
execute at @s run setblock ~ ~ ~ orange_stained_glass

execute at @s[tag=tower1] run tellraw @a[distance=..100] {"text":"Team Orange now owns Weakness","color":"gold"}
execute at @s[tag=tower2] run tellraw @a[distance=..100] {"text":"Team Orange now owns Rage","color":"gold"}
execute at @s[tag=tower3] run tellraw @a[distance=..100] {"text":"Team Orange now owns Swiftness","color":"gold"}

tag @s[tag=tower1] add orange1
tag @s[tag=tower2] add orange2
tag @s[tag=tower3] add orange3


execute at @s run playsound block.beacon.power_select master @a[distance=..100] ~ ~ ~ 100 0.4 
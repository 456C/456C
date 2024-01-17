
scoreboard players set $s_teal obj2 0
scoreboard players set $s_magenta obj2 0
scoreboard players set $s_orange obj2 0
scoreboard players set $s_lime obj2 0

execute as @e[tag=s_teal] run scoreboard players add $s_teal obj2 1
execute as @e[tag=s_magenta] run scoreboard players add $s_magenta obj2 1
execute as @e[tag=s_orange] run scoreboard players add $s_orange obj2 1
execute as @e[tag=s_lime] run scoreboard players add $s_lime obj2 1


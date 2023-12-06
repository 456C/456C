scoreboard players add @s obj 1

execute at @s[tag=solo2t] as @s if score tick120hz obj matches 0 run effect give @a[distance=12..40] darkness 6 0 false
execute at @s[tag=teal2t] as @s if score tick120hz obj matches 0 run effect give @a[team=!Teal,distance=12..40] darkness 6 0 false
execute at @s[tag=lime2t] as @s if score tick120hz obj matches 0 run effect give @a[team=!Lime,distance=12..40] darkness 6 0 false
execute at @s[tag=magenta2t] as @s if score tick120hz obj matches 0 run effect give @a[team=!Magenta,distance=12..40] darkness 6 0 false
execute at @s[tag=orange2t] as @s if score tick120hz obj matches 0 run effect give @a[team=!Orange,distance=12..40] darkness 6 0 false


execute at @s run particle smoke ~ ~ ~ 0.3 0.3 0.3 0.01 2 force

execute at @a[team=!Teal] as @e[tag=teal2t, distance = ..2] at @s run particle campfire_cosy_smoke ~ ~0.5 ~ 0.3 0.01 0.3 0 10
execute at @a[team=!Lime] as @e[tag=lime2t, distance = ..2] at @s run particle campfire_cosy_smoke ~ ~0.5 ~ 0.3 0.01 0.3 0 10
execute at @a[team=!Magenta] as @e[tag=magenta2t, distance = ..2] at @s run particle campfire_cosy_smoke ~ ~0.5 ~ 0.3 0.01 0.3 0 10
execute at @a[team=!Orange] as @e[tag=orange2t, distance = ..2] at @s run particle campfire_cosy_smoke ~ ~0.5 ~ 0.3 0.01 0.3 0 10

execute at @a[team=!Solo] run kill @e[tag=solo2t, distance = ..2]
execute at @a[team=!Teal] run kill @e[tag=teal2t, distance = ..2]
execute at @a[team=!Lime] run kill @e[tag=lime2t, distance = ..2]
execute at @a[team=!Magenta] run kill @e[tag=magenta2t, distance = ..2] 
execute at @a[team=!Orange] run kill @e[tag=orange2t, distance = ..2]


kill @e[scores={obj=600..}, tag=talisman]
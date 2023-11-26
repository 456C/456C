execute at @s run particle minecraft:cloud ~ ~ ~ 0.4 0.4 0.4 0.1 1

execute unless score @s Death matches 1.. at @s as @a[distance=..3] at @s if entity @s[team=Solo] if score tick60hz obj matches 0 run tellraw @s {"text":"Joining a team is required to own a tower","color":"yellow"}

execute at @s as @a[distance=..3] at @s unless entity @s[team=Solo] unless score @s Death matches 1.. run tag @s add captured
execute at @s as @a[distance=..3] at @s unless entity @s[team=Solo] unless score @s Death matches 1.. run kill @e[type=area_effect_cloud,tag=capture,distance=..5]

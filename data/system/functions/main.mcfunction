
function system:right_click
schedule function system:clocks/main 1t replace

execute as @a[scores={Death=1..}] run function system:death/main
execute as @e[type=marker, tag = Lever] at @s if block ~ ~ ~ lever[powered=true] run schedule function system:map_func/lever1 1t

# lobby effects
execute at @e[type=marker,tag=lobby] as @a[distance=..50,gamemode=adventure] store result score @s yPos run data get entity @s Pos[1]
execute if score tick60hz obj matches 0 at @e[type=marker,tag=lobby] as @a[distance=..50] run function system:lobby/effects
execute at @e[type=marker,tag=lobby] as @a[scores={yPos=..2}] run function system:lobby/yleveltp

# map
execute if score .tower1 obj matches 0.. as @e[type=marker,tag=tower1] run function system:map_func/tower1func
execute if score .tower2 obj matches 0.. as @e[type=marker,tag=tower2] run function system:map_func/tower2func
execute if score .tower3 obj matches 0.. as @e[type=marker,tag=tower3] run function system:map_func/tower3func

# fall of map
execute at @e[type=marker,tag=playground] as @a[distance=..150,gamemode=adventure] store result score @s yPos run data get entity @s Pos[1]
execute at @e[type=marker,tag=playground] as @a[scores={yPos=..-5}] run function system:lobby/ylevelmap

# team tower
execute as @a[tag=captured] run function system:map_func/towerteam 

# capture
execute as @e[type=area_effect_cloud,tag=capture] run function system:capture/cap_main
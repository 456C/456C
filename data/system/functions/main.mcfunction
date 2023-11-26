
# main systems
execute if score tick120hz obj matches 0 as @a unless score @s running matches 0.. run scoreboard players add @s running 0
function system:right_click
schedule function system:clocks/main 1t replace

# Death respawn
execute as @a[scores={Death=1..}] run function system:death/main

# Map lever
execute as @e[type=marker, tag = Lever] at @s if block ~ ~ ~ lever[powered=true] run schedule function system:map_func/lever1 1t

# lobby effects
execute at @e[type=marker,tag=lobby] as @a[distance=..50,gamemode=adventure] store result score @s yPos run data get entity @s Pos[1]
execute if score tick60hz obj matches 0 at @e[type=marker,tag=lobby] as @a[distance=..50] run function system:lobby/effects
execute at @e[type=marker,tag=lobby] as @a[scores={yPos=..2},distance=..50] run function system:lobby/yleveltp

# map
execute if score .tower1 obj matches 0.. as @e[type=marker,tag=tower1] run function system:map_func/tower1func
execute if score .tower2 obj matches 0.. as @e[type=marker,tag=tower2] run function system:map_func/tower2func
execute if score .tower3 obj matches 0.. as @e[type=marker,tag=tower3] run function system:map_func/tower3func

# fall of map
execute as @e[type=marker,tag=playground] at @s as @a[distance=..150,gamemode=adventure] store result score @s yPos run data get entity @s Pos[1]
execute as @e[type=marker,tag=playground] at @s as @a[scores={yPos=..-5}] run function system:lobby/ylevelmap

# team tower
execute if score tick120hz obj matches 1 as @e[type=marker,tag=tower] at @s run function system:towerfx/main

execute as @a[tag=captured] run function system:map_func/towerteam 

# capture2
execute as @e[type=area_effect_cloud,tag=capture] run function system:capture/cap_main

# classes 
execute if score tick60hz obj matches 0 as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] run kill @s
execute if score tick60hz obj matches 0 as @a run function system:classes/update_classes
execute if score tick60hz obj matches 0 as @a[scores={eatBeetroot=1..}] run function system:classes/update_classes 

# item cooldowns
execute as @a[nbt={SelectedItem:{ tag:{dragonheart:1b}, id:"minecraft:beetroot"}}] run function system:items/timers/item1


# healing

execute if score tick3hz obj matches 1 as @a[scores={healing=1..}] run function system:healing/3hz
execute if score tick3hz obj matches 2 as @a run effect clear @s regeneration
execute if score tick10hz obj matches 1 as @a[scores={mediumHealing=1..}] run function system:healing/10hz
execute if score tick10hz obj matches 2 as @a run effect clear @s regeneration
execute if score tick20hz obj matches 1 as @a[scores={slowHealing=1..}] run function system:healing/20hz
execute if score tick20hz obj matches 2 as @a run effect clear @s regeneration

# remove hunger
execute as @a[nbt=!{foodLevel:20}] run function system:saturation/give 

# item setup
execute if score tick120hz obj matches 0 as @a[tag=!itemsetup] run function system:items/setup
# loop items
execute if score tick20hz obj matches 0 as @a[scores={item1=1..}] as @s run function system:items/item1




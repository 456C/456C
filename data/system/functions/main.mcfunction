
# main systems
execute if score tick120hz obj matches 0 as @a unless score @s running matches 0.. run scoreboard players add @s running 0
function system:right_click
schedule function system:clocks/main 1t replace
execute as @e[type=item, nbt=!{Item:{ tag:{special:1b}}}] run kill @s

# New Players Setup
execute as @a[tag=!NotNew] run team join Solo @s
execute as @a[tag=!NotNew] run tag @s add NotNew 

execute as @a[tag=!add3tokens2] run scoreboard players add @s Tokens 3
execute as @a[tag=!add3tokens2] run scoreboard players add @s Points 0
tag @a[tag=!add3tokens2] remove add3tokens
execute as @a[tag=!add3tokens2] run tag @s add add3tokens2

# After Death
execute if score tick20hz obj matches 0 run tag @a[scores={Death=1..}] remove empoweredArcher
execute if score tick20hz obj matches 0 run scoreboard players set @a[scores={Death=1..}] totalArrows 0

# Death respawn
execute as @a[scores={Death=1..}] run function system:death/main

# Map lever
execute as @e[type=marker, tag = Lever] at @s if block ~ ~ ~ lever[powered=true] run schedule function system:map_func/lever1 1t
execute if score .leverTimer obj matches 1.. if score tick120hz obj matches 0 as @e[type=marker, tag = Lever] at @s as @a[distance=..100] run function system:map_func/lever1

# lobby effects
execute at @e[type=marker,tag=lobby] as @a[distance=..50,gamemode=adventure] store result score @s yPos run data get entity @s Pos[1]
execute if score tick60hz obj matches 0 at @e[type=marker,tag=lobby] as @a[distance=..50] run function system:lobby/effects
execute at @e[type=marker,tag=lobby] as @a[scores={yPos=..2},distance=..50] run function system:lobby/yleveltp
execute as @e[type=marker,tag=classRemove] at @s as @a[distance=..5,scores={SelectedClass=1..}] run function system:lobby/removeclass
execute as @e[type=marker,tag=lobby] at @s as @a[distance=..1,gamemode=adventure] run function system:warps/totem_of_weakness

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

# invisibility func

execute if score tick20hz obj matches 0 as @a[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run function system:classes/armor_sets/armor_clear
execute if score tick60hz obj matches 0 as @a[nbt=!{active_effects:[{id:"minecraft:invisibility"}]}] run function system:classes/armor_sets/armor_give


# healing

execute if score tick3hz obj matches 1 as @e[scores={healing=1..}] run function system:healing/3hz
execute if score tick3hz obj matches 2 as @e run effect clear @s regeneration
execute if score tick10hz obj matches 1 as @e[scores={mediumHealing=1..}] run function system:healing/10hz
execute if score tick10hz obj matches 2 as @e run effect clear @s regeneration
execute if score tick20hz obj matches 1 as @e[scores={slowHealing=1..}] run function system:healing/20hz
execute if score tick20hz obj matches 2 as @e run effect clear @s regeneration

# remove
execute as @a[nbt=!{foodLevel:20}] run function system:saturation/give 

# item setup
execute if score tick120hz obj matches 0 as @a[tag=!itemsetup] run function system:items/setup

# loop items
execute if score tick20hz obj matches 0 as @e[scores={item1=1..}] as @s run function system:items/item1
execute if score tick20hz obj matches 0 as @e[scores={item2=1..}] as @s run function system:items/item2
execute if score tick20hz obj matches 0 as @e[scores={item3=1..}] as @s run function system:items/item3
execute if score tick20hz obj matches 0 as @e[scores={item4=1..}] as @s run function system:items/item4
execute if score tick20hz obj matches 0 as @e[scores={item5=1..}] as @s run function system:items/item5
execute if score tick20hz obj matches 0 as @e[scores={item6=1..}] as @s run function system:items/item6


# item cooldowns
execute as @a[nbt={SelectedItem:{ tag:{dragonheart:1b}, id:"minecraft:beetroot"}}] run function system:items/timers/item1
execute if score tick60hz obj matches 0 as @a[scores={item1=1..},nbt=!{SelectedItem:{ tag:{dragonheart:1b}, id:"minecraft:beetroot"}}] run xp set @s 0 levels

execute as @a[nbt={SelectedItem:{ tag:{cursedtalisman:1b}, id:"minecraft:piglin_head"}}] run function system:items/timers/item2
execute if score tick60hz obj matches 0 as @a[scores={item2=1..},nbt=!{SelectedItem:{ tag:{cursedtalisman:1b}, id:"minecraft:piglin_head"}}] run xp set @s 0 levels

execute as @a[nbt={SelectedItem:{ tag:{woodenrake:1b}, id:"minecraft:wooden_hoe"}}] run function system:items/timers/item3
execute if score tick60hz obj matches 0 as @a[scores={item3=1..},nbt=!{SelectedItem:{ tag:{cursedtalisman:1b}, id:"minecraft:piglin_head"}}] run xp set @s 0 levels

execute as @a[nbt={SelectedItem:{ tag:{knowledge:1b}, id:"minecraft:creeper_banner_pattern"}}] run function system:items/timers/item4
execute if score tick60hz obj matches 0 as @a[scores={item4=1..},nbt=!{SelectedItem:{ tag:{cursedtalisman:1b}, id:"minecraft:creeper_banner_pattern"}}] run xp set @s 0 levels

execute as @a[nbt={SelectedItem:{ tag:{nightveil:1b}, id:"minecraft:bow"}}] run function system:items/timers/item5
execute if score tick60hz obj matches 0 as @a[scores={item6=1..},nbt=!{SelectedItem:{ tag:{nightveil:1b}, id:"minecraft:bow"}}] run xp set @s 0 levels

execute as @a[nbt={SelectedItem:{ tag:{greentea:1b}, id:"minecraft:potion"}}] run function system:items/timers/item6
execute if score tick60hz obj matches 0 as @a[scores={item6=1..},nbt=!{SelectedItem:{ tag:{greentea:1b}, id:"minecraft:potion"}}] run xp set @s 0 levels

# spawn mobs
execute if score tick120hz obj matches 0 as @e[tag=summon, type=marker] run function system:mob_waves/summon

# item util
execute as @e[tag=talisman] run function system:items/item_util/item2

# detect triggers
execute if score tick3hz obj matches 0 as @e[tag=marco] at @s run scoreboard players enable @a[distance=..10] trigger
execute if score tick60hz obj matches 59 as @e[tag=marco] at @s run scoreboard players reset @a[distance=10..] trigger
execute if score tick3hz obj matches 0 as @e[tag=lobby] at @s run scoreboard players enable @a[distance=..14] trigger
execute if score tick60hz obj matches 59 as @e[tag=lobby] at @s run scoreboard players reset @a[distance=14..] trigger
execute as @a[scores={trigger=1..}] run function system:trigger

# detect villager talk
execute if score tick60hz obj matches 0 as @e[type=villager] at @s as @a[scores={villager=1..}] run function system:villager_interaction
execute if score tick60hz obj matches 0 as @a[scores={villager=1..}] run scoreboard players reset @s villager

# reset sneak time
execute if score tick10hz obj matches 0 run scoreboard players reset @a[scores={isCrouching=1..}] isCrouching

# kill in ground arrows

execute as @e[type=arrow, nbt={inGround:1b}] run kill @s 


# kill mob with tag = "killafter"
scoreboard players add @e[tag=killafter] obj 1
execute as @e[scores={obj=420..},tag=killafter] at @s run tp @s ~ ~-100 ~
kill @e[scores={obj=420..},tag=killafter] 

execute if score tick120hz obj matches 0 run scoreboard players add @a slowHealing 0
execute if score tick120hz obj matches 0 run scoreboard players add @a mediumHealing 0
execute if score tick120hz obj matches 0 run scoreboard players add @a healing 0


# example
# execute as @a[scores={right_click=1..}, nbt={SelectedItem:{ tag:{dragonheart:1b}, id:"minecraft:beetroot"}}] at @s run function system:raycast/start 

# items 1-30 trigger
execute as @a[scores={right_click=1..}, nbt={SelectedItem:{ tag:{dragonheart:1b}, id:"minecraft:beetroot"}}] at @s run function system:items/item1
execute as @a[scores={right_click=1..}, nbt={SelectedItem:{ tag:{cursedtalisman:1b}, id:"minecraft:piglin_head"}}] at @s run function system:items/item2
execute as @a[scores={right_click=1..}, nbt={SelectedItem:{ tag:{woodenrake:1b}, id:"minecraft:wooden_hoe"}}] at @s run function system:items/item3
execute as @a[scores={right_click=1..}, nbt={SelectedItem:{ tag:{knowledge:1b}, id:"minecraft:creeper_banner_pattern"}}] at @s run function system:items/item4
execute as @a[scores={shootBow=1..}, nbt={SelectedItem:{ tag:{nightveil:1b}, id:"minecraft:bow"}}] at @s run function system:items/item5
execute as @a[scores={item6=0},nbt={active_effects:[{id:"minecraft:water_breathing",amplifier:100b}]}] at @s run function system:items/item6
execute as @a[scores={right_click=1..}, nbt={SelectedItem:{ tag:{prismaticaurora:1b}, id:"minecraft:golden_shovel"}}] at @s run function system:items/item7
execute as @a[scores={right_click=1..}, nbt={SelectedItem:{ tag:{magicrune:1b}, id:"minecraft:wayfinder_armor_trim_smithing_template"}}] at @s run function system:items/item8
execute as @a[scores={right_click=1..}, nbt={SelectedItem:{ tag:{spelltome:1b}, id:"minecraft:book"}}] at @s run function system:items/item9

# Reset the scoreboard

scoreboard players set @a[scores={shootBow=1..}] shootBow 0
scoreboard players set @a[scores={right_click=1..}] right_click 0

# loop items


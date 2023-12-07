# example
# execute as @a[scores={right_click=1..}, nbt={SelectedItem:{ tag:{dragonheart:1b}, id:"minecraft:beetroot"}}] at @s run function system:raycast/start 

# items 1-30 trigger
execute as @a[scores={right_click=1..}, nbt={SelectedItem:{ tag:{dragonheart:1b}, id:"minecraft:beetroot"}}] at @s run function system:items/item1
execute as @a[scores={right_click=1..}, nbt={SelectedItem:{ tag:{cursedtalisman:1b}, id:"minecraft:piglin_head"}}] at @s run function system:items/item2
execute as @a[scores={right_click=1..}, nbt={SelectedItem:{ tag:{woodenrake:1b}, id:"minecraft:wooden_hoe"}}] at @s run function system:items/item3
execute as @a[scores={right_click=1..}, nbt={SelectedItem:{ tag:{knowledge:1b}, id:"minecraft:creeper_banner_pattern"}}] at @s run function system:items/item4
execute as @a[scores={shootBow=1..}, nbt={SelectedItem:{ tag:{nightveil:1b}, id:"minecraft:bow"}}] at @s run function system:items/item5 
execute as @a[nbt={active_effects:[{id:"minecraft:water_breathing",amplifier:100b}]}] at @s run function system:items/item6
# Reset the scoreboard

scoreboard players reset @a[scores={shootBow=1..}] shootBow
scoreboard players reset @a[scores={right_click=1..}] right_click

# loop items


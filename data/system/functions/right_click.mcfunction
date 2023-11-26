# example
# execute as @a[scores={right_click=1..}, nbt={SelectedItem:{ tag:{dragonheart:1b}, id:"minecraft:beetroot"}}] at @s run function system:raycast/start 

# items 1-30 trigger
execute as @a[scores={right_click=1..}, nbt={SelectedItem:{ tag:{dragonheart:1b}, id:"minecraft:beetroot"}}] at @s run function system:items/item1

                             
# Reset the scoreboard
scoreboard players reset @a[scores={right_click=1..}] right_click

# loop items


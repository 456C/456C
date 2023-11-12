# Detect right-click per item
execute as @a[scores={right_click=1..}, nbt={SelectedItem:{ tag:{weaponItem:1b}, id:"minecraft:grass_block"}}] at @s run function system:raycast/start 
                                          
# Reset the scoreboard
scoreboard players reset @a[scores={right_click=1..}] right_click
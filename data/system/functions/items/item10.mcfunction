
# spell tome

# success

execute as @s[scores={item10=0}] at @s run effect give @s levitation 1 10 true
execute as @s[scores={item10=0}] at @s run effect give @s resistance 5 5 true
execute as @s[scores={item10=0}] run clear @s netherite_upgrade_smithing_template{groundslam:1b} 1
execute as @s[scores={item10=0}] run tag @s add groundslam
execute as @s[scores={item10=0}] at @s run playsound entity.bat.takeoff master @a[distance=..15] ~ ~ ~ 0.5 0.3 0.5

# cooldown 
scoreboard players set @s[scores={item10=0}] item10 26

# failure

# execute as @s[scores={right_click=1..,item10=1..}] run playsound block.note_block.bass master @s ~ ~ ~ 100 0.1

# loop

execute as @s[scores={item10=1,right_click=0}, nbt=!{SelectedItem:{ tag:{groundslam:1b}, id:"minecraft:netherite_upgrade_smithing_template"}}] at @s run playsound block.note_block.bell master @s ~ ~ ~ 0.3 0.7
execute unless entity @s[scores={right_click=1..}] run scoreboard players remove @s[scores={item10=1..}] item10 1
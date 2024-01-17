
# nightveil

# success

execute as @s[scores={item11=1}] at @s run give @s arrow 2
execute as @s[scores={item11=0, totalArrows = 2..}] at @s run tag @s add sbowreload
execute as @s[scores={item11=1, totalArrows = 2}] at @s run playsound block.bell.use master @s ~ ~ ~ 3 1
execute as @s[scores={item11=1, totalArrows = 2..}] at @s run tag @s remove sbowreload
execute as @s[scores={item11=1, totalArrows = 2..}] at @s run scoreboard players reset @s totalArrows


# cooldown 
execute as @s[tag=sbowreload, scores={item11=0}] run scoreboard players set @s[scores={item11=0}] item11 16

# failure

# execute as @s[scores={shootBow=1..,item11=1..}] run playsound block.note_block.bass master @s ~ ~ ~ 100 0.1

# loop

execute as @s[scores={item11=1,right_click=0}, nbt=!{SelectedItem:{ tag:{sectionbow:1b}, id:"minecraft:bow"}}] at @s run playsound block.note_block.bell master @s ~ ~ ~ 0.3 0.7
execute unless entity @s[scores={shootBow=1..}] run scoreboard players remove @s[scores={item11=1..}] item11 1
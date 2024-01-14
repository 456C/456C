
# nightveil

# success

execute as @s[scores={item5=1}] at @s run give @s arrow 1
execute as @s[scores={item5=1, totalArrows = 4..}] at @s run tag @s add empoweredArcher
execute as @s[scores={item5=1, totalArrows = 4}] at @s run playsound block.bell.use master @s ~ ~ ~ 3 1
execute as @s[scores={item5=1, totalArrows = 5..}] at @s run tag @s remove empoweredArcher
execute as @s[scores={item5=1, totalArrows = 5..}] at @s run scoreboard players reset @s totalArrows

execute as @s[tag=empoweredArcher, scores={item5=0}] at @s run effect give @s invisibility 12 0 true
execute as @s[tag=empoweredArcher, scores={item5=0}] at @s run particle campfire_signal_smoke ~ ~ ~ 1 1 1 0 250 force
execute as @s[tag=empoweredArcher, scores={item5=0}] run function system:raycast/empowered_archer/start


# cooldown 
scoreboard players set @s[scores={item5=0}] item5 2

# failure

# execute as @s[scores={shootBow=1..,item5=1..}] run playsound block.note_block.bass master @s ~ ~ ~ 100 0.1

# loop

execute as @s[scores={item5=1,right_click=0}, nbt=!{SelectedItem:{ tag:{nightveil:1b}, id:"minecraft:bow"}}] at @s run playsound block.note_block.bell master @s ~ ~ ~ 0.3 0.7
execute unless entity @s[scores={shootBow=1..}] run scoreboard players remove @s[scores={item5=1..}] item5 1
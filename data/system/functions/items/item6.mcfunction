
# green tea

# success


scoreboard players add @s[scores={item6=0}] slowHealing 15
execute as @s[scores={item6=0..}] at @s run clear @s glass_bottle


# cooldown 
scoreboard players set @s[scores={item6=0}] item6 60

# failure

execute as @s[scores={item6=1..},nbt={active_effects:[{id:"minecraft:water_breathing",amplifier:100b}]}] run playsound block.note_block.bass master @s ~ ~ ~ 100 0.1

# loop


execute as @s[scores={item6=1,right_click=0}] at @s run playsound block.note_block.bell master @s ~ ~ ~ 0.3 0.7
execute unless entity @s[nbt={active_effects:[{id:"minecraft:water_breathing",amplifier:100b}]}] run scoreboard players remove @s[scores={item6=1..}] item6 1



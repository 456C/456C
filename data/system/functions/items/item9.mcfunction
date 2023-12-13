
# spell tome

# success

execute as @s[scores={item9=0}] at @s run give @s arrow 1
execute as @e[scores={item9=0}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 2 2
execute as @s[scores={item9=0}] run function system:raycast/empowered_archer/start


# cooldown 
scoreboard players set @s[scores={item9=0}] item5 2

# failure

# execute as @s[scores={shootBow=1..,item5=1..}] run playsound block.note_block.bass master @s ~ ~ ~ 100 0.1

# loop

execute as @s[scores={item5=1}] at @s run playsound block.note_block.bell master @s ~ ~ ~ 20 1.6
execute unless entity @s[scores={shootBow=1..}] run scoreboard players remove @s[scores={item5=1..}] item5 1
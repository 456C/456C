
# Monk rake

# success

execute as @s[scores={item3=0}] at @s run particle end_rod ~ ~1 ~ 0.7 0.25 0.7 0.01 10 force
execute as @s[scores={item3=0}] run effect give @s resistance 2 24 false
execute as @s[scores={item3=0}] run effect give @s slow_falling 1 0 false
execute as @s[scores={item3=0},nbt={OnGround:0b}] run effect give @s levitation 1 5 false
execute as @s[scores={item3=0},nbt={OnGround:1b}] at @s run playsound entity.elder_guardian.curse master @a[distance=..15] ~ ~ ~ 0.5 2 1
execute as @s[scores={item3=0},nbt={OnGround:0b}] at @s run playsound entity.allay.item_given master @a[distance=..15] ~ ~ ~ 2.5 0.3

# cooldown 
scoreboard players set @s[scores={item3=0}] item3 4


# failure

execute as @s[scores={right_click=1..,item3=1..}] run playsound block.note_block.bass master @s ~ ~ ~ 100 0.1

# loop

execute as @s[scores={item3=1}] at @s run playsound block.note_block.bell master @s ~ ~ ~ 20 1.6
execute unless entity @s[scores={right_click=1..}] run scoreboard players remove @s[scores={item3=1..}] item3 1

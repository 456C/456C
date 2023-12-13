
# knowledge

# success

execute as @s[scores={item4=0},team=Solo] at @s run effect give @e[distance=..100, type=!pig] glowing 7 0 true 
execute as @s[scores={item4=0},team=Teal] at @s run effect give @e[distance=..100,team=!Teal, type=!pig] glowing 7 0 true 
execute as @s[scores={item4=0},team=Lime] at @s run effect give @e[distance=..100,team=!Lime, type=!pig] glowing 7 0 true 
execute as @s[scores={item4=0},team=Magenta] at @s run effect give @e[distance=..100,team=!Magenta, type=!pig] glowing 7 0 true 
execute as @s[scores={item4=0},team=Orange] at @s run effect give @e[distance=..100,team=!Orange, type=!pig] glowing 7 0 true

execute as @s[scores={item4=0},team=Teal] at @s run playsound block.enchantment_table.use master @a[distance=..100] ~ ~ ~ 10 0.2 
execute as @s[scores={item4=0},team=Lime] at @s run playsound block.enchantment_table.use master @a[distance=..100] ~ ~ ~ 10 0.2 
execute as @s[scores={item4=0},team=Magenta] at @s run playsound block.enchantment_table.use master @a[distance=..100] ~ ~ ~ 10 0.2 
execute as @s[scores={item4=0},team=Orange] at @s run playsound block.enchantment_table.use master @a[distance=..100] ~ ~ ~ 10 0.2 

execute as @s[scores={item4=0},team=Teal] at @s as @a[team=!Teal, distance=..100] run particle elder_guardian ~ ~ ~ ~ ~ ~ 2 1 force 
execute as @s[scores={item4=0},team=Lime] at @s as @a[team=!Lime, distance=..100] run particle elder_guardian ~ ~ ~ ~ ~ ~ 2 1 force 
execute as @s[scores={item4=0},team=Magenta] at @s as @a[team=!Magenta, distance=..100] run particle elder_guardian ~ ~ ~ ~ ~ ~ 2 1 force 
execute as @s[scores={item4=0},team=Orange] at @s as @a[team=!Orange, distance=..100] run particle elder_guardian ~ ~ ~ ~ ~ ~ 2 1 force 

execute as @s[scores={item4=0}] at @s run playsound item.book.page_turn master @a[distance=..15] ~ ~ ~ 3 1

# cooldown 
scoreboard players set @s[scores={item4=0}] item4 110

# failure

execute as @s[scores={right_click=1..,item4=1..}] run playsound block.note_block.bass master @s ~ ~ ~ 100 0.1

# loop

execute as @s[scores={item4=1}] at @s run playsound block.note_block.bell master @s ~ ~ ~ 20 1.6
execute unless entity @s[scores={right_click=1..}] run scoreboard players remove @s[scores={item4=1..}] item4 1
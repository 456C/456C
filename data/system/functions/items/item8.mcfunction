
# magic rune

# success

execute as @s[scores={item8=0}] at @s run tag @s add rune


execute as @s[scores={item8=0}] run scoreboard players set @s item7 2
execute as @s[scores={item8=0},tag=rune] at @s run playsound block.enchantment_table.use master @a[distance=..15] ~ ~ ~ 1 1 1
execute as @s[scores={item8=0}] run particle enchant ~ ~2 ~ 0.7 0.1 0.7 0.5 40 normal
execute as @s[scores={item8=16..}] at @s run particle enchant ~ ~2 ~ 0.7 0.1 0.7 0.5 40 normal





# cooldown 
scoreboard players set @s[scores={item8=0}] item8 32

# failure

# 

execute as @s[scores={right_click=1..,item8=1..}] run playsound block.note_block.bass master @s ~ ~ ~ 100 0.1

# loop

execute as @s[scores={item8=1,right_click=0}, nbt=!{SelectedItem:{ tag:{magicrune:1b}, id:"minecraft:wayfinder_armor_trim_smithing_template"}}] at @s run playsound block.note_block.bell master @s ~ ~ ~ 0.3 0.7
execute as @s[scores={item8=16},tag=rune] at @s run playsound block.enchantment_table.use master @a[distance=..15] ~ ~ ~ 1 0.1 1
execute as @s[scores={item8=16},tag=rune] at @s run playsound block.beacon.deactivate master @a[distance=..15] ~ ~ ~ 1 0.1 1
execute as @s[scores={item8=16}] at @s run tag @s remove rune
execute unless entity @s[scores={right_click=1..}] run scoreboard players remove @s[scores={item8=1..}] item8 1

# prismatic aurora

# rune ability 1 exploding spell

execute as @s[team=Teal,tag=rune,scores={item7=0, SelectedSpell=0}] run function system:raycast/explosion/teal/start
execute as @s[team=Lime,tag=rune,scores={item7=0, SelectedSpell=0}] run function system:raycast/explosion/lime/start
execute as @s[team=Magenta,tag=rune,scores={item7=0, SelectedSpell=0}] run function system:raycast/explosion/magenta/start
execute as @s[team=Orange,tag=rune,scores={item7=0, SelectedSpell=0}] run function system:raycast/explosion/orange/start

execute as @s[tag=rune,scores={item7=0, SelectedSpell=0}] run playsound block.enchantment_table.use master @a[distance=..20] ~ ~ ~ 0.5 2 1
scoreboard players set @s[tag=rune,scores={item7=0, SelectedSpell=0}] item7 1

# no rune ability 1 

# rune ability 1 exploding spell

execute as @s[team=Teal,tag=!rune,scores={item7=0, SelectedSpell=0}] run function system:raycast/explosion/teal/start
execute as @s[team=Lime,tag=!rune,scores={item7=0, SelectedSpell=0}] run function system:raycast/explosion/lime/start
execute as @s[team=Magenta,tag=!rune,scores={item7=0, SelectedSpell=0}] run function system:raycast/explosion/magenta/start
execute as @s[team=Orange,tag=!rune,scores={item7=0, SelectedSpell=0}] run function system:raycast/explosion/orange/start

execute as @s[tag=!rune,scores={item7=0, SelectedSpell=0}] run playsound block.enchantment_table.use master @a[distance=..20] ~ ~ ~ 0.5 2 1
scoreboard players set @s[tag=!rune,scores={item7=0, SelectedSpell=0}] item7 3

# no rune ability 2 amethyst wall

execute as @s[tag=!rune,scores={item7=0, SelectedSpell=1}] run function system:raycast/amethyst_wall/start
scoreboard players set @s[tag=!rune,scores={item7=0, SelectedSpell=1}] item7 15


# rune ability 2 amethyst wall

execute as @s[tag=rune,scores={item7=0, SelectedSpell=1}] run function system:raycast/amethyst_wall/start
scoreboard players set @s[tag=rune,scores={item7=0, SelectedSpell=1}] item7 9


# ability 3 

# failure

execute as @s[scores={right_click=1..,item7=1..}] run playsound block.note_block.bass master @s ~ ~ ~ 100 0.1

# loop

execute as @s[scores={item7=1,right_click=0}, nbt=!{SelectedItem:{ tag:{prismaticaurora:1b}, id:"minecraft:golden_shovel"}}] at @s run playsound block.note_block.bell master @s ~ ~ ~ 0.3 0.7
execute unless entity @s[scores={right_click=1..}] run scoreboard players remove @s[scores={item7=1..}] item7 1
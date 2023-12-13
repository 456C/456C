
# prismatic aurora

# ability 1 exploding spell

execute as @s[tag=!rune,scores={item7=0, SelectedSpell=0}] run function system:raycast/explosion/start

# ability 2 amethyst wall

execute as @s[tag=rune,scores={item7=0, SelectedSpell=0}] run function system:raycast/amethyst_wall/start

# ability 3 heal shot





scoreboard players set @s[scores={item7=0}] item7 3


# failure

# execute as @s[scores={shootBow=1..,item7=1..}] run playsound block.note_block.bass master @s ~ ~ ~ 100 0.1

# loop

execute as @s[scores={item7=1}] at @s run playsound block.note_block.bell master @s ~ ~ ~ 20 1.6
execute unless entity @s[scores={shootBow=1..}] run scoreboard players remove @s[scores={item7=1..}] item7 1
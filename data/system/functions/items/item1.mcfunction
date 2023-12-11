
# dragon heart

# success

execute as @s[scores={item1=0}] run scoreboard players set @s healing 16
execute as @s[scores={item1=0}] run scoreboard players set @s mediumHealing 8
# execute as @s[scores={item1=0}] run effect give @s slowness 12 0 false
execute as @s[scores={item1=0}] run effect give @s resistance 6 1 false
execute as @s[scores={item1=0}] run effect give @s strength 6 0 false
execute as @s[scores={item1=0}] at @s run playsound item.bottle.fill_dragonbreath master @a[distance=..20] ~ ~ ~ 0.3 1.8
execute as @s[scores={item1=0}] at @s run playsound entity.evoker.cast_spell master @a[distance=..20] ~ ~ ~ 20 1 

# cooldown 
scoreboard players set @s[scores={item1=0}] item1 16


# failure

execute as @s[scores={right_click=1..,item1=1..}] run playsound block.note_block.bass master @s ~ ~ ~ 100 0.1

# show Timer if held

# tag @s[nbt=!{SelectedItem:{ tag:{dragonheart:1b}, id:"minecraft:beetroot"}}] remove item1
# tag @s[nbt={SelectedItem:{ tag:{dragonheart:1b}, id:"minecraft:beetroot"}}] add item1 

# loop

execute as @s[scores={item1=1}] at @s run playsound block.note_block.bell master @s ~ ~ ~ 20 1.6
execute unless entity @s[scores={right_click=1..}] run scoreboard players remove @s[scores={item1=1..}] item1 1



# spell tome

# success

execute as @s[scores={item9=0}] at @s run scoreboard players add @s SelectedSpell 1
execute as @s[scores={item9=0, SelectedSpell=3..}] at @s run scoreboard players set @s SelectedSpell 0
execute as @s[scores={item9=0}] at @s run playsound item.book.page_turn master @s ~ ~ ~ 10 1 0.3

execute as @s[scores={item9=0, SelectedSpell=0}] run title @a actionbar ["",{"text":"\"Infliction\"","color":"yellow"}]
execute as @s[scores={item9=0, SelectedSpell=1}] run title @a actionbar ["",{"text":"\"Illusion\"","color":"yellow"}]
execute as @s[scores={item9=0, SelectedSpell=2}] run title @a actionbar ["",{"text":"\"Flow\"","color":"yellow"}]



# cooldown 
scoreboard players set @s[scores={item9=0}] item9 1

# failure

execute as @s[scores={right_click=1..,item9=1..}] run playsound block.note_block.bass master @s ~ ~ ~ 100 0.1

# loop

execute as @s[scores={item9=1,right_click=0}, nbt=!{SelectedItem:{ tag:{spelltome:1b}, id:"minecraft:book"}}] at @s run playsound block.note_block.bell master @s ~ ~ ~ 0.3 0.7
execute unless entity @s[scores={right_click=1..}] run scoreboard players remove @s[scores={item9=1..}] item9 1
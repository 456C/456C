# success

scoreboard players add @s[scores={item6=0}] slowHealing 15
execute as @s[scores={item6=0..}] at @s run clear @s glass_bottle
execute as @s[scores={item6=0}] at @s run give @s potion{display:{Name:'{"text":"Green Tea","color":"yellow","italic":false}',Lore:['{"text":"Drinking this will restore","color":"gray","italic":false}','[{"text":"some","color":"gray","italic":false},{"text":" health","color":"red","italic":false},{"text":"!","color":"gray","italic":false}]']},HideFlags:255,greentea:1b,custom_potion_effects:[{id:"minecraft:water_breathing",amplifier:100b,duration:1,show_particles:0b}],CustomPotionColor:6262587} 1


# cooldown 
scoreboard players set @s[scores={item6=0}] item6 30

# failure

execute as @s[scores={item6=1..},nbt={active_effects:[{id:"minecraft:water_breathing",amplifier:100b}]}] run playsound block.note_block.bass master @s ~ ~ ~ 100 0.1

# loop

execute as @s[scores={item6=1..},nbt=!{Inventory:[{id: "minecraft:potion", tag: {greentea:1b}}]}] run give @s potion{display:{Name:'{"text":"Green Tea","color":"yellow","italic":false}',Lore:['{"text":"Drinking this will restore","color":"gray","italic":false}','[{"text":"some","color":"gray","italic":false},{"text":" health","color":"red","italic":false},{"text":"!","color":"gray","italic":false}]']},HideFlags:255,greentea:1b,custom_potion_effects:[{id:"minecraft:water_breathing",amplifier:100b,duration:1,show_particles:0b}],CustomPotionColor:6262587} 1
execute as @s[scores={item6=1}] at @s run playsound block.note_block.bell master @s ~ ~ ~ 20 1.6
execute unless entity @s[nbt={active_effects:[{id:"minecraft:water_breathing",amplifier:100b}]}] run scoreboard players remove @s[scores={item6=1..}] item6 1
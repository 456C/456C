clear @s[nbt=!{Inventory:[{Slot:-106b, id: "minecraft:carrot_on_a_stick"}]}] carrot_on_a_stick{CustomModelData:1}


scoreboard players set @s[scores={SelectedClass=1},nbt=!{Inventory:[{Slot:-106b, id: "minecraft:carrot_on_a_stick"}]}] class 1
scoreboard players set @s[scores={SelectedClass=2},nbt=!{Inventory:[{Slot:-106b, id: "minecraft:carrot_on_a_stick"}]}] class 2
scoreboard players set @s[scores={SelectedClass=3},nbt=!{Inventory:[{Slot:-106b, id: "minecraft:carrot_on_a_stick"}]}] class 3
scoreboard players set @s[scores={SelectedClass=4},nbt=!{Inventory:[{Slot:-106b, id: "minecraft:carrot_on_a_stick"}]}] class 4
scoreboard players set @s[scores={SelectedClass=5},nbt=!{Inventory:[{Slot:-106b, id: "minecraft:carrot_on_a_stick"}]}] class 5
scoreboard players set @s[scores={SelectedClass=6},nbt=!{Inventory:[{Slot:-106b, id: "minecraft:carrot_on_a_stick"}]}] class 6
scoreboard players set @s[scores={SelectedClass=7},nbt=!{Inventory:[{Slot:-106b, id: "minecraft:carrot_on_a_stick"}]}] class 7
scoreboard players set @s[scores={SelectedClass=8},nbt=!{Inventory:[{Slot:-106b, id: "minecraft:carrot_on_a_stick"}]}] class 8
scoreboard players set @s[scores={SelectedClass=9},nbt=!{Inventory:[{Slot:-106b, id: "minecraft:carrot_on_a_stick"}]}] class 9

execute unless entity @s[nbt={Inventory:[{Slot:-106b, id: "minecraft:carrot_on_a_stick"}]}] run function system:classes/redirection

# eaten items

scoreboard players reset @s eatBeetroot
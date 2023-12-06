execute as @s run scoreboard players set @s SelectedClass 0
tellraw @s {"text":"You cannot wear a class in the rest area!","color":"yellow"}
clear @s
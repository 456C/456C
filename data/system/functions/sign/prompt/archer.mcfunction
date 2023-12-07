execute as @s[tag=class_archer] run scoreboard players set @s SelectedClass 3
execute as @s[tag=class_archer] run tellraw @s {"text":"Class selected!","color":"yellow"}
clear @s[tag=class_archer]

# purchase
execute as @s run tellraw @s[tag=!class_archer] [{"text":"\n "},{"text":"Looks like you don't own this class!","color":"yellow"},{"text":"\n "}]
execute as @s run tellraw @s[tag=!class_archer] [{"text":"\n "},{"text":"[Click to Buy]","color":"#FF6C00","clickEvent":{"action":"run_command","value":"/trigger trigger set 402"}},{"text":" (1 Token will be deducted) ","color":"gray"},{"text":"\n "}]

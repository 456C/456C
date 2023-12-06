execute as @s[tag=class_berserker] run scoreboard players set @s SelectedClass 1
execute as @s[tag=class_berserker] run tellraw @s {"text":"Class selected!","color":"yellow"}
clear @s[tag=class_berserker]

# purchase
execute as @s run tellraw @s[tag=!class_berserker] [{"text":"\n "},{"text":"Looks like you don't own this class!","color":"yellow"},{"text":"\n "}]
execute as @s run tellraw @s[tag=!class_berserker] [{"text":"\n "},{"text":"[Click to Buy]","color":"#FF6C00","clickEvent":{"action":"run_command","value":"/trigger trigger set 400"}},{"text":" (1 Token will be deducted) ","color":"gray"},{"text":"\n "}]


# failure
execute as @s[tag=class_mage] run tellraw @s [{"text":"\n"},{"text":"You already own this class!","color":"red"},{"text":"\n"}]
execute as @s[tag=!class_mage] at @s run playsound block.note_block.bass master @s ~ ~ ~ 10 0.5
execute as @s[tag=!class_mage, scores={Tokens=..0}] run tellraw @s {"text":"You don't have enough tokens!","color":"red"}
execute as @s[tag=!class_mage,scores={Tokens=..0}] at @s run playsound block.note_block.bass master @s ~ ~ ~ 10 0.5

# success
execute as @s[tag=!class_mage,scores={Tokens=1..}] run tellraw @s [{"text":"\n"},{"text":"Congratulations! You now own the Mage class.","color":"green"},{"text":"\n"}]
execute as @s[tag=!class_mage,scores={Tokens=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 10 1.2
execute as @s[tag=!class_mage,scores={Tokens=1..}] run clear @s
execute as @s[tag=!class_mage,scores={Tokens=1..}] run scoreboard players set @s SelectedClass 4
execute as @s[scores={SelectedClass = 4, Tokens=1..}] run scoreboard players remove @s Tokens 1
execute as @s[scores={SelectedClass = 4}] run tag @s add class_mage


# CHANGE NAME, AND NUMBERS FOR EACH CLASS
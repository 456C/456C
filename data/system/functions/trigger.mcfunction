
# Guild Selection 100..103
execute as @s[scores={trigger=100}] at @s if entity @e[tag=marco,distance=..7] run function system:teamjoin/teal
execute as @s[scores={trigger=101}] at @s if entity @e[tag=marco,distance=..7] run function system:teamjoin/lime
execute as @s[scores={trigger=102}] at @s if entity @e[tag=marco,distance=..7] run function system:teamjoin/magenta
execute as @s[scores={trigger=103}] at @s if entity @e[tag=marco,distance=..7] run function system:teamjoin/orange

# Class selection 1..99

execute as @s[scores={trigger=1..99}, team=Solo] run function system:sign/failure
execute as @s[scores={trigger=1}, team=!Solo] run function system:sign/prompt/berserker
execute as @s[scores={trigger=2}, team=!Solo] run function system:sign/prompt/monk
execute as @s[scores={trigger=3}, team=!Solo] run function system:sign/prompt/archer
execute as @s[scores={trigger=4}, team=!Solo] run function system:sign/prompt/mage

# Class Buy 400..499

execute as @s[scores={trigger=400}, team=!Solo] at @s if entity @e[tag=lobby, distance=..15] run function system:sign/perform_purchase/berserker
execute as @s[scores={trigger=401}, team=!Solo] at @s if entity @e[tag=lobby, distance=..15] run function system:sign/perform_purchase/monk
execute as @s[scores={trigger=402}, team=!Solo] at @s if entity @e[tag=lobby, distance=..15] run function system:sign/perform_purchase/archer
execute as @s[scores={trigger=403}, team=!Solo] at @s if entity @e[tag=lobby, distance=..15] run function system:sign/perform_purchase/mage

# Other Triggers <Value>

execute as @s[scores={trigger=41294}] run tellraw @s ["",{"text":"\nCurrent Tokens: "},{"score":{"name":"@s","objective":"Tokens"},"color":"#FF5F00"},{"text":"\nCurrent Points: "},{"score":{"name":"@s","objective":"Points"},"color":"green"},{"text":"\n\n"},{"text":"Tokens are the main currency to buy classes.\nTo earn more, mine crystals in the dungeons and\nbring them back to the guild! ","color":"gray"},{"text":"\n "}]
execute as @s[scores={trigger=43294}] run scoreboard players set @s SelectedClass 0
execute as @s[scores={trigger=43294}] run clear @s
# reset 
execute as @s run scoreboard players reset @s trigger
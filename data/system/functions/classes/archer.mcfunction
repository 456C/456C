execute as @s run function system:classes/clear

execute as @s[scores={class=3}] run function system:classes/armor_sets/armor_give

scoreboard players add @s totalArrows 0
execute as @s[scores={class=3}] run item replace entity @s hotbar.0 with iron_sword{CustomModelData:1,archerdagger:1b,HideFlags:126, display:{Name:'[{"text":"Iron Dagger","italic":false}]'}} 1
execute as @s[scores={class=3}] run item replace entity @s hotbar.1 with bow{Unbreakable:1,nightveil:1b,display:{Name:'[{"text":"Nightveil","italic":false,"color":"green"}]',Lore:['[{"text":"By archers, for archers.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Every ","italic":false,"color":"gray"},{"text":"4th shot","color":"white"},{"text":" will be "},{"text":"devastating","color":"red"},{"text":","},{"text":"","color":"dark_purple"}]','[{"text":"leaving smoke behind and making","italic":false,"color":"gray"}]','[{"text":"the wearer ","italic":false,"color":"gray"},{"text":"invisible","color":"dark_aqua"},{"text":" for a few","color":"gray"}]','[{"text":"seconds.","italic":false,"color":"gray"}]']},HideFlags:127} 1
execute as @s[scores={class=3}] run item replace entity @s hotbar.2 with potion{display:{Name:'{"text":"Green Tea","color":"yellow","italic":false}',Lore:['{"text":"Drinking this will restore","color":"gray","italic":false}','[{"text":"some","color":"gray","italic":false},{"text":" health","color":"red","italic":false},{"text":"!","color":"gray","italic":false}]']},HideFlags:255,greentea:1b,custom_potion_effects:[{id:"minecraft:water_breathing",amplifier:100b,duration:1,show_particles:0b}],CustomPotionColor:6262587} 1
execute as @e[scores={class=3, item5 = 0}] run item replace entity @s hotbar.3 with arrow 1
scoreboard players reset @s class
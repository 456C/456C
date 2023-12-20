execute as @s run function system:classes/clear

execute as @s[scores={class=4}] run function system:classes/armor_sets/armor_give
scoreboard players add @s[scores={class=4}] SelectedSpell 0
tag @s remove activatedHeals 

execute as @s[scores={class=4}] run item replace entity @s hotbar.0 with iron_sword{CustomModelData:1,archerdagger:1b,HideFlags:126, display:{Name:'[{"text":"Iron Dagger","italic":false}]'}} 1
execute as @s[scores={class=4}] run item replace entity @s hotbar.1 with golden_shovel{display:{Name:'[{"text":"Prismatic","color":"#00CF97","italic":false},{"text":" Aurora","color":"#BE02E3","italic":false}]',Lore:['{"text":"The stone that imbues this staff","color":"gray","italic":false}','{"text":"is said to be enchanted by the most","color":"gray","italic":false}','{"text":"talented mages where auroras gleam.","color":"gray","italic":false}']},HideFlags:255,Unbreakable:1b,CustomModelData:1,prismaticaurora:1b} 1
execute as @s[scores={class=4}] run item replace entity @s hotbar.2 with book{display:{Name:'{"text":"Spell Tome","color":"light_purple","italic":false}',Lore:['{"text":"Gibberish to the common folk but","color":"gray","italic":false}','{"text":"greatest asset for a mage.","color":"gray","italic":false}','{"text":"You get a weird feeling with every","color":"gray","italic":false}','{"text":"page turn.","color":"gray","italic":false}']},HideFlags:255,Unbreakable:1b,spelltome:1b} 1
execute as @s[scores={class=4}] run item replace entity @s hotbar.3 with wayfinder_armor_trim_smithing_template{display:{Name:'{"text":"Magic Rune","color":"light_purple","italic":false}',Lore:['{"text":"Only mages know how to utilize this artifact.","color":"gray","italic":false}']},HideFlags:255,Unbreakable:1b,magicrune:1b} 1

scoreboard players reset @s class
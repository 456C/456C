execute as @s run function system:classes/clear


execute as @s[scores={class=5}] run scoreboard players set @s item6 0
execute as @s[scores={class=5}] run function system:classes/armor_sets/armor_give

execute as @s[scores={class=5}] run item replace entity @s hotbar.0 with iron_sword{Unbreakable:1b,sectionsword:1b}
execute as @s[scores={class=5}] run item replace entity @s hotbar.1 with bow{Unbreakable:1b,sectionbow:1b}
execute as @s[scores={class=5}] run item replace entity @s hotbar.2 with golden_shovel{display:{Name:'[{"text":"Prismatic","color":"#00CF97","italic":false},{"text":" Aurora","color":"#BE02E3","italic":false}]',Lore:['{"text":"The stone that imbues this staff","color":"gray","italic":false}','{"text":"is said to be enchanted by the most","color":"gray","italic":false}','{"text":"talented mages where auroras gleam.","color":"gray","italic":false}']},HideFlags:255,Unbreakable:1b,CustomModelData:1,prismaticaurora:1b} 1
# execute as @s[scores={class=5}] run item replace entity @s hotbar.3 with book{display:{Name:'{"text":"Spell Tome","color":"light_purple","italic":false}',Lore:['{"text":"Gibberish to the common folk but","color":"gray","italic":false}','{"text":"greatest asset for a mage.","color":"gray","italic":false}','{"text":"You get a weird feeling with every","color":"gray","italic":false}','{"text":"page turn.","color":"gray","italic":false}']},HideFlags:255,Unbreakable:1b,spelltome:1b} 1
execute as @s[scores={class=5}] run item replace entity @s hotbar.3 with wayfinder_armor_trim_smithing_template{display:{Name:'{"text":"Magic Rune","color":"light_purple","italic":false}',Lore:['{"text":"Only mages know how to utilize this artifact.","color":"gray","italic":false}']},HideFlags:255,Unbreakable:1b,magicrune:1b} 1
execute as @s[scores={class=5}] run scoreboard players set @s SelectedSpell 1



scoreboard players reset @s class
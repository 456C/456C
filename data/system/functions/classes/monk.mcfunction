execute as @s run function system:classes/clear


execute as @s[scores={class=2}] run scoreboard players set @s item6 0
execute as @s[scores={class=2}] run function system:classes/armor_sets/armor_give

execute as @s[scores={class=2}] run item replace entity @s hotbar.0 with wooden_hoe{display:{Name:'{"text":"Wooden Rake","color":"#FFEEBF","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Just a regular wooden rake.","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":"Monks teach that even the weak","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":"can achieve greatness.","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:255,Unbreakable:1b,woodenrake:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:7,Operation:0,UUID:[I;-73887526,-1353102934,-1074795552,-987793516]}]} 1
execute as @s[scores={class=2}] run item replace entity @s hotbar.1 with creeper_banner_pattern{display:{Name:'[{"text":"Knowledge","italic":false}]',Lore:['[{"text":"This scroll contains","italic":false,"color":"gray"}]','[{"text":"very ","italic":false,"color":"gray"},{"text":"useful information","color":"white"},{"text":"."},{"text":"","color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]']},HideFlags:121, knowledge:1b} 1

scoreboard players reset @s class


execute as @s[team=Teal] run scoreboard players set currentTeam obj 1
execute as @s[team=Orange] run scoreboard players set currentTeam obj 2
execute as @s[team=Lime] run scoreboard players set currentTeam obj 3
execute as @s[team=Magenta] run scoreboard players set currentTeam obj 4

execute if score currentTeam obj matches 1 at @s as @e[type=marker,tag=tower,distance=..10] run function system:map_func/towerteamteal 
execute if score currentTeam obj matches 2 at @s as @e[type=marker,tag=tower,distance=..10] run function system:map_func/towerteamorange
execute if score currentTeam obj matches 3 at @s as @e[type=marker,tag=tower,distance=..10] run function system:map_func/towerteamlime
execute if score currentTeam obj matches 4 at @s as @e[type=marker,tag=tower,distance=..10] run function system:map_func/towerteammagenta

scoreboard players reset currentTeam obj

tag @s remove captured








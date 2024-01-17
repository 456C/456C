
# tp: game has not begun yet

execute if score $game_timer obj2 matches 601.. run tellraw @s {"text":"Game has not begun yet!","color":"red"}

# Havent joined a team
execute if score $game_timer obj2 matches 1..600 as @s[team=Solo] run tellraw @s {"text":"You haven't joined a team, pick one!","color":"yellow"}
execute if score $game_timer obj2 matches 1..600 as @s[team=Solo] run tellraw @s ["",{"text":"[Teal]","color":"#98F7E9","clickEvent":{"action":"run_command","value":"/execute at @e[tag=lobby2] as @a[distance=..80] run team join Teal @s"}},{"text":" "},{"text":"[Lime]","color":"#C2F38B","clickEvent":{"action":"run_command","value":"/execute at @e[tag=lobby2] as @a[distance=..80] run team join Lime @s"}},{"text":" "},{"text":"[Orange]","color":"#F6B15D","clickEvent":{"action":"run_command","value":"/execute at @e[tag=lobby2] as @a[distance=..80] run team join Orange @s"}},{"text":" "},{"text":"[Magenta]","color":"#EC8AEC","clickEvent":{"action":"run_command","value":"/execute at @e[tag=lobby2] as @a[distance=..80] run team join Magenta @s"}}]
execute if score $game_timer obj2 matches 1..600 as @s[team=Solo] run tp @s 1030.174 10 448.098 -0.8 -0.5
execute if score $game_timer obj2 matches 1..600 as @s[team=Solo] run scoreboard players set @s SelectedClass 5

# Game begun, perform TP

execute if score $game_timer obj2 matches 1..600 as @s[team=Teal] run tp @s 10955.366 8 10513.734 -162.8 2.1
execute if score $game_timer obj2 matches 1..600 as @s[team=Lime] run tp @s 11028.522 8 10450.467 98.4 -5.2
execute if score $game_timer obj2 matches 1..600 as @s[team=Magenta] run tp @s 10892.510 8 10440.534 -79.2 -0.7
execute if score $game_timer obj2 matches 1..600 as @s[team=Orange] run tp @s 10965.479 8 10377.487 20.2 -3.1
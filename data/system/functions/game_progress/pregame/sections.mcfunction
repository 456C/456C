
scoreboard players set $global_players obj2 2

# $pregame 1-80 (score/seconds)

 # remove 1  from timer
execute if score $pregame obj2 matches 1.. run scoreboard players remove $pregame obj2 1

execute if score $pregame obj2 matches 30 run tellraw @a {"text":"Another game beginning soon!","color":"yellow"}
execute if score $pregame obj2 matches 30 as @a at @s run playsound block.note_block.bass master @s ~ ~ ~ 0.3 0.5 0.3
execute if score $pregame obj2 matches 20 run tellraw @a {"text":"20 seconds!","color":"yellow"}
execute if score $pregame obj2 matches 20 as @a at @s run playsound block.note_block.bass master @s ~ ~ ~ 0.3 0.5 0.3
execute if score $pregame obj2 matches 10 run tellraw @a {"text":"10 seconds!","color":"yellow"}
execute if score $pregame obj2 matches 10 as @a at @s run playsound block.note_block.bass master @s ~ ~ ~ 0.3 0.5 0.3
execute if score $pregame obj2 matches 3 run tellraw @a {"text":"In 3! ...","color":"yellow"}
execute if score $pregame obj2 matches 3 as @a at @s run playsound block.note_block.bass master @s ~ ~ ~ 0.3 1 0.3

execute if score $pregame obj2 matches 1 as @a at @s run playsound block.note_block.bass master @s ~ ~ ~ 0.3 0.5 0.3
execute if score $pregame obj2 matches 1 unless score $global_players obj2 matches 2.. run tellraw @a {"text":"Not enough players, attempting again soon...","color":"red"}
execute if score $pregame obj2 matches 1 if score $global_players obj2 matches 2.. run tellraw @a {"text":"Game beings!","color":"yellow"}
execute if score $pregame obj2 matches 1 unless score $global_players obj2 matches 2.. run scoreboard players set $pregame obj2 80
execute if score $pregame obj2 matches 1 if score $global_players obj2 matches 2.. run scoreboard players set $game_timer obj2 600 
execute if score $pregame obj2 matches 1 if score $global_players obj2 matches 2.. run scoreboard players set @a SelectedClass 5

execute if score $pregame obj2 matches 1 if score $global_players obj2 matches 2.. run function system:game_progress/sections/start 





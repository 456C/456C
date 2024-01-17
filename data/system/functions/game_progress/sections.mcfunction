execute if score tick20hz obj matches 0 if score $game_timer obj2 matches 599 as @a run bossbar set minecraft:game_timer visible true
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches 599 as @a run bossbar set minecraft:game_ending players @s
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches 599 as @a run bossbar set minecraft:game_ending visible false
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches -30..600 run scoreboard players remove $game_timer obj2 1
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches 4..10 at @e[tag=section_map] as @a[distance=..250] run playsound block.dispenser.fail master @s ~ ~ ~ 0.3 0.6 0.3
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches 1..3 as @a at @s run playsound block.note_block.bass master @s ~ ~ ~ 0.3 0.6 0.3
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches 0 as @a run bossbar set minecraft:game_ending players @s
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches 0 as @a run bossbar set minecraft:game_ending visible true
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches 599 as @a run bossbar set minecraft:game_timer players @s
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches 0 as @a run bossbar set minecraft:game_timer players @s
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches 0 as @a run bossbar set minecraft:game_timer visible false
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches 0 as @a at @s run playsound item.goat_horn.sound.1 master @s ~ ~ ~ 10 0.1 1
execute if score tick20hz obj matches 0 store result bossbar minecraft:game_timer value run scoreboard players get $game_timer obj2 
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches 0 run tellraw @a {"text":"Game has ended!","color":"yellow"}
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches -9..0 at @e[tag=section_map] run gamemode spectator @a[distance=..250]

# Count and Result goes here:

execute if score tick20hz obj matches 0 if score $game_timer obj2 matches -10 run tellraw @a {"text":"Results go here!!!!!!","color":"yellow"}
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches -10 run function system:section/cleantags

execute if score tick20hz obj matches 0 if score $game_timer obj2 matches 0 run scoreboard players set @a SelectedClass 0
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches 0 run clear @a
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches -15 run scoreboard players set @a totalArrows 0
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches -15 run team join Solo @a
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches -15 run kill @a

execute if score tick20hz obj matches 0 if score $game_timer obj2 matches 599 run scoreboard objectives setdisplay sidebar s_display
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches 599 run tellraw @a {"text":" "}
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches 599 run tellraw @a {"text":"Color with most sections captured wins the game.","color":"green"}
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches 599 run tellraw @a {"text":"10 minute timer begins now!","color":"green"}
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches 300 run tellraw @a {"text":"5 minutes remaining!","color":"green"}
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches 60 run tellraw @a {"text":"1 minutes remaining!","color":"yellow"}
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches 30 run tellraw @a {"text":"30 seconds remaining!","color":"yellow"}
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches 10 run tellraw @a {"text":"10","color":"gold"}
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches 3 run tellraw @a {"text":"3","color":"red"}
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches 2 run tellraw @a {"text":"2","color":"red"}
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches 1 run scoreboard objectives setdisplay sidebar
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches 1 run tellraw @a {"text":"1","color":"red"}


# blink Game Ending bossbar
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches 0 as @a run bossbar set minecraft:game_ending value 1
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches -1 as @a run bossbar set minecraft:game_ending value 0
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches -2 as @a run bossbar set minecraft:game_ending value 1
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches -3 as @a run bossbar set minecraft:game_ending value 0
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches -4 as @a run bossbar set minecraft:game_ending value 1
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches -5 as @a run bossbar set minecraft:game_ending value 0
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches -6 as @a run bossbar set minecraft:game_ending value 1
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches -7 as @a run bossbar set minecraft:game_ending value 0
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches -8 as @a run bossbar set minecraft:game_ending value 1
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches -9 as @a run bossbar set minecraft:game_ending value 0
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches -10 as @a run bossbar set minecraft:game_ending visible false

execute if score tick20hz obj matches 0 if score $game_timer obj2 matches -31 run scoreboard players set $pregame obj2 80
execute if score tick20hz obj matches 0 if score $game_timer obj2 matches -31 run scoreboard players set $game_timer obj2 601



execute if score tower1 obj matches 0 run tellraw @a[distance=..100] {"text":"Weakness Tower is inactive","color":"gray"}
execute if score tower1 obj matches 1 run tellraw @a[distance=..100] {"text":"Weakness Tower is now capturable","color":"gray"}
execute if score tower1 obj matches 2 run tellraw @a[distance=..100] {"text":"Weakness Tower is now captured","color":"yellow"}

execute at @s if score tower1 obj matches 0 run setblock ~ ~ ~ light_gray_stained_glass destroy
execute at @s if score tower1 obj matches 0 run playsound block.beacon.deactivate master @a[distance=..100] ~ ~ ~ 10 0.4


# reset
scoreboard players reset tower1 obj
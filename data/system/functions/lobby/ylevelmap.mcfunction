execute at @e[type=marker,tag=hoghole] unless entity @s[distance=..10] run tp @s 506.306 -2 478.024
effect give @s levitation 1 30 false
effect give @s wither 3 5 false

damage @s 6 fall at ~ ~ ~
scoreboard players remove @s healing 20
scoreboard players remove @s slowHealing 10
scoreboard players remove @s mediumHealing 20
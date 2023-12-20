execute as @e[type=!#system:not_mob, tag=!raycasting, dx=0] positioned ~-0.01 ~-0.01 ~-0.01 if entity @s[dx=0] positioned ~0.01 ~0.01 ~0.01 run function system:raycast/explosion/lime/collide

scoreboard players add .distance raycastDistance 1

particle enchant ~ ~ ~ 0 0 0 0 1 force 

execute if score .distance raycastDistance matches ..100 positioned ^ ^ ^0.5 rotated ~ ~1.4 unless block ~ ~ ~ #system:raycast_pass run function system:raycast/explosion/lime/collide 

execute if score .distance raycastDistance matches ..100 positioned ^ ^ ^0.5 rotated ~ ~0.8 if block ~ ~ ~ #system:raycast_pass run function system:raycast/explosion/lime/loop 



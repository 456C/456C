execute as @e[type=!#system:not_mob, tag=!raycasting, dx=0] positioned ~-0.01 ~-0.01 ~-0.01 if entity @s[dx=0] positioned ~0.01 ~0.01 ~0.01 run function system:raycast/amethyst_wall/collide

scoreboard players add .distance raycastDistance 1

particle dragon_breath ~ ~ ~ 0 0 0 0.1 1 force 

execute if score .distance raycastDistance matches ..80 positioned ^ ^ ^0.2 rotated ~ ~3 unless block ~ ~ ~ #system:raycast_pass run function system:raycast/amethyst_wall/collide

execute if score .distance raycastDistance matches ..80 positioned ^ ^ ^0.2 rotated ~ ~3 if block ~ ~ ~ #system:raycast_pass run function system:raycast/amethyst_wall/loop



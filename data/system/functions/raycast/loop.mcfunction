execute as @e[type=!#system:not_mob, tag=!raycasting, dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function system:raycast/collide

scoreboard players add .distance raycastDistance 1

particle campfire_signal_smoke ~ ~ ~ 0 0 0 0 2 force 

execute if score .distance raycastDistance matches ..250 positioned ^ ^ ^0.5 rotated ~ ~ if block ~ ~ ~ #system:raycast_pass run function system:raycast/loop



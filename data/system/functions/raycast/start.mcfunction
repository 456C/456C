tag @s add raycasting

# execute anchored eyes positioned ^-0.30 ^-0.65 ^0.3 run function system:raycast/loop

execute anchored eyes positioned ^ ^-0.4 ^0.3 run function system:raycast/loop 

tag @s remove raycasting

scoreboard players reset .distance raycastDistance
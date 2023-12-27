tag @s add skill
tag @a[distance=..7,sort=nearest,limit=1] add nearestplayer


execute at @s run playsound entity.enderman.teleport master @a[distance=..15] ~ ~ ~ 0.5 1.3 0.3
execute at @s run particle portal ~ ~ ~ 0.3 0.3 0.3 0.01 30 normal
execute as @a[tag=nearestplayer] at @s run tp @e[tag=skill] ^ ^ ^-2




tag @a remove nearestplayer
tag @s remove skill
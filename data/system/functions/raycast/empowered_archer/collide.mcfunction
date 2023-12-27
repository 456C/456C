
execute positioned ~ ~ ~ run particle sonic_boom ~ ~ ~ 1.6 1.6 1.6 0.01 6 force
execute positioned ~ ~ ~ run playsound entity.warden.sonic_boom master @a[distance=..35] ~ ~ ~ 2 1 1

execute as @s[team=Teal] positioned ~ ~ ~ as @e[distance=..4, team=!Teal] run function system:effect/medium_damage
execute as @s[team=Lime] positioned ~ ~ ~ as @e[distance=..4, team=!Lime] run function system:effect/medium_damage
execute as @s[team=Orange] positioned ~ ~ ~ as @e[distance=..4, team=!Orange] run function system:effect/medium_damage
execute as @s[team=Magenta] positioned ~ ~ ~ as @e[distance=..4, team=!Magenta] run function system:effect/medium_damage


scoreboard players set .distance raycastDistance 250




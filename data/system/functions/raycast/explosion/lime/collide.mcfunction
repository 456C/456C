execute positioned ~ ~ ~ as @e[distance=..4, team=!Lime] run function system:effect/soft_wither
execute positioned ~ ~ ~ as @e[distance=..4, team=Lime] run function system:effect/burst_heal
execute positioned ~ ~ ~ as @e[distance=..4, team=!Lime] run function system:effect/burst_heal


particle sonic_boom ~ ~ ~ 0.1 0.1 0.1 0.1 1 force
playsound entity.shulker_bullet.hit master @a[distance=..30] ~ ~ ~ 0.7 1.2 0.3



scoreboard players set .distance raycastDistance 250

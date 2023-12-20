summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Tags:["amethystwall"],Marker:1b}

execute as @e[tag=raycasting] run tp @e[tag=amethystwall] ~ ~ ~ ~ 0
execute positioned ~ ~ ~ run playsound entity.player.hurt_freeze master @a[distance=..10] ~ ~ ~ 1 0.1 1

scoreboard players set .distance raycastDistance 20




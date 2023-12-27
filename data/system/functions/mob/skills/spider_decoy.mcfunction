execute at @s run summon cave_spider ~ ~ ~ {Health:0.1f} 
execute at @s run playsound entity.player.hurt_freeze master @a[distance=..10] ~ ~ ~ 0.5 1 0.5
execute at @s run particle squid_ink ~ ~ ~ 0.2 0.2 0.2 0.05 15
execute at @s run spreadplayers ~ ~ 3 5 false @s
effect give @s invisibility 4 0 true

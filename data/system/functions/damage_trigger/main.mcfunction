
execute at @s run playsound minecraft:entity.wither.shoot master @a[distance=..9] ~ ~ ~ 0.1 1.5 1
execute at @s run particle block red_concrete_powder ~ ~1 ~ 0.3 0.3 0.3 0.01 25 force
execute at @s run particle campfire_signal_smoke ~ ~1 ~ 0.3 0.3 0.3 0.01 1 force






scoreboard players reset @s damageTakenFx

# reset
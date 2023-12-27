
execute at @s run particle crit ~ ~ ~ 0 0 0 0 1 force
execute as @s[tag=groundslam,scores={item10=1..24},nbt={OnGround:1b}] at @s run playsound entity.warden.sonic_boom master @a[distance=..20] ~ ~ ~ 0.3 0.3 0.3
execute as @s[tag=groundslam,scores={item10=1..24},nbt={OnGround:1b}] at @s run particle sonic_boom ~ ~ ~ 4 0 4 0.01 8 force
execute as @s[tag=groundslam,scores={item10=1..24},nbt={OnGround:1b},team=Teal] at @s as @a[team=!Teal,distance=..6] run function system:effect/medium_damage 
execute as @s[tag=groundslam,scores={item10=1..24},nbt={OnGround:1b},team=Lime] at @s as @a[team=!Lime,distance=..6] run function system:effect/medium_damage 
execute as @s[tag=groundslam,scores={item10=1..24},nbt={OnGround:1b},team=Orange] at @s as @a[team=!Orange,distance=..6] run function system:effect/medium_damage 
execute as @s[tag=groundslam,scores={item10=1..24},nbt={OnGround:1b},team=Magenta] at @s as @a[team=!Magenta,distance=..6] run function system:effect/medium_damage 



execute as @s[tag=groundslam,scores={item10=1..24},nbt={OnGround:1b}] run tag @s remove groundslam 
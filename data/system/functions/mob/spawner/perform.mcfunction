
# Spawner uses marker tagged as 'spawner', will play a particle and a sound every tick.
# Uses max number of mobs that are around, if max number is achieved then spawn won't happen
# Uses predicate random value to spawn

# Perform Particles at all spawners
execute at @e[tag=spawner,type=marker] if entity @a[distance=..10] run particle flame ~ ~ ~ 0.5 0.5 0.5 0 25 force 


execute as @e[type=marker,tag=floor1_hoglin_spawner] at @s if entity @a[distance=30..50] unless entity @e[type=hoglin,distance=..40] if predicate system:0_50 run function system:mob/spawner/floor1_hoglin
execute as @e[type=marker,tag=floor1_hoglin_spawner] at @s if entity @a[distance=..5] unless entity @e[type=hoglin,distance=..40] if predicate system:0_50 run function system:mob/spawner/floor1_hoglin

execute as @e[type=marker,tag=floor1_hoglin_spawner] at @s if entity @a[distance=30..50] unless entity @e[type=hoglin,distance=..40] if predicate system:0_50 run function system:mob/spawner/floor1_hoglin2
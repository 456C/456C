
# Spawner uses marker tagged as 'spawner', will play a particle and a sound every tick.
# Uses max number of mobs that are around, if max number is achieved then spawn won't happen
# Uses predicate random value to spawn

execute as @s[type=marker,tag=floor1_hoglin_spawner] unless entity @e[limit=4,tag=floor1_hoglin,distance=..35] if predicate system:0_50 run function system:mob/spawner/floor1_hoglin
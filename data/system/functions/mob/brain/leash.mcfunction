
# Leash per mob and distance

execute at @e[tag=floor1_hoglin_spawner] as @e[tag=floor1_hoglin,distance=35..] if predicate system:0_25 run tp @s @e[tag=floor1_hoglin_spawner,sort=nearest,limit=1]
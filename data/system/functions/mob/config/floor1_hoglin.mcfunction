
# Hoglins go back to their original leash location if player is too far
# Are marked with the tag "floor1_hoglin"
# Have a 25% of spawning with a special ability

scoreboard players set $maxabilities obj 1

#Ability use frequency: 
# 0 - slow predicate system:0_01
# 1 - normal predicate system:0_15
# 2 - fast predicate system:0_45
# 3 - faster predicate system:0_50
# 4 - crazy predicate system:0_75

scoreboard players set $frequency obj 1

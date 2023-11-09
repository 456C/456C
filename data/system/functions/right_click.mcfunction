# Detect right-click
execute as @a[scores={right_click=1..}] at @s run function system:raycast/start

# Reset the scoreboard
scoreboard players reset @a[scores={right_click=1..}] right_click
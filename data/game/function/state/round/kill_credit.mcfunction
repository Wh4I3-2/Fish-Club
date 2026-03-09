execute as @a[scores={killed=1..}] at @s run function game:state/round/kill_credit/internal

scoreboard players reset * killed
scoreboard players reset * killed_by
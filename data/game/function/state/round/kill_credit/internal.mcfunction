execute store result storage temp:item count int 1 run scoreboard players get @p[scores={killed_by=1..}] fishes
function items:tasty_fish with storage temp:item

scoreboard players reset @s killed
scoreboard players reset @p[scores={killed_by=1..}] killed_by
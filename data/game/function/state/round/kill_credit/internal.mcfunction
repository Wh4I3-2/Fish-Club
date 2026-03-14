execute store result storage temp:item args.count int 1 run scoreboard players get @p[scores={killed_by=1..}] fishes
data modify storage temp:item args.id set value "game:tasty_fish"
function item:give with storage temp:item

scoreboard players reset @s killed
scoreboard players reset @p[scores={killed_by=1..}] killed_by

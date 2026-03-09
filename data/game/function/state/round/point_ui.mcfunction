xp set @s 0 points
execute unless block ~ ~-3 ~ magenta_glazed_terracotta run xp set @s 0 levels
execute store result storage temp:levels levels int 0.05 run scoreboard players get @s point_timer
execute if block ~ ~-3 ~ magenta_glazed_terracotta run function utils:set_levels with storage temp:levels
execute if score @s point_timer matches ..0 if block ~ ~-3 ~ magenta_glazed_terracotta run function items:tasty_fish {count:1}
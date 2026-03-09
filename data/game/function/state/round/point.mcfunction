data merge storage game:round {clockArgs:{args:{ objective: "point_timer", target: "@s", length: 100 }}}
execute as @a at @s if block ~ ~-3 ~ magenta_glazed_terracotta run function utils:clock with storage game:round clockArgs

xp set @a 0 points
execute as @a at @s unless block ~ ~-3 ~ magenta_glazed_terracotta run xp set @s 0 levels
execute as @a at @s if score @s point_timer matches 81..100 if block ~ ~-3 ~ magenta_glazed_terracotta run xp set @s 1 levels
execute as @a at @s if score @s point_timer matches 61..80 if block ~ ~-3 ~ magenta_glazed_terracotta run xp set @s 2 levels
execute as @a at @s if score @s point_timer matches 41..60 if block ~ ~-3 ~ magenta_glazed_terracotta run xp set @s 3 levels
execute as @a at @s if score @s point_timer matches 21..40 if block ~ ~-3 ~ magenta_glazed_terracotta run xp set @s 4 levels
execute as @a at @s if score @s point_timer matches 0..20 if block ~ ~-3 ~ magenta_glazed_terracotta run xp set @s 5 levels
execute as @a at @s if score @s point_timer matches ..0 if block ~ ~-3 ~ magenta_glazed_terracotta run function items:tasty_fish {count:1}
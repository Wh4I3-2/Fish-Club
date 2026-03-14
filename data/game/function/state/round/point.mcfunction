data merge storage game:round {clockArgs:{args:{ objective: "point_timer", target: "@s" }}}
execute store result storage game:round clockArgs.args.length int 20 run scoreboard players get .fish_cooldown game.config
execute as @a at @s if block ~ ~-3 ~ magenta_glazed_terracotta run function utils:clock with storage game:round clockArgs

execute as @a at @s run function game:state/round/point_ui

execute as @a at @s if score @s point_timer matches ..0 if block ~ ~-3 ~ magenta_glazed_terracotta run function item:give {args:{id:"game:tasty_fish"}}

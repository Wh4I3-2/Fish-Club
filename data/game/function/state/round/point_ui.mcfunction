xp set @s 0 points

scoreboard players operation .a math = .fish_cooldown game.config
scoreboard players set .b math 20
scoreboard players operation .a math *= .b math
scoreboard players operation .b math = @s point_timer
scoreboard players operation .a math -= .b math
scoreboard players add .a math 19

execute unless block ~ ~-3 ~ magenta_glazed_terracotta run xp set @s 0 levels
execute store result storage temp:levels levels int 0.05 run scoreboard players get .a math
execute if block ~ ~-3 ~ magenta_glazed_terracotta run function utils:set_levels with storage temp:levels

data remove storage temp:levels levels

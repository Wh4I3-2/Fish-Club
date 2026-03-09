data modify storage temp:score_args Thrower set from entity @s Thrower
execute store result score .a math run data get entity @s Item.components."minecraft:custom_data".points
execute store result score .b math run data get entity @s Item.count
scoreboard players operation .a math *= .b math
execute store result storage temp:score_args points int 1 run scoreboard players get .a math
function game:state/round/score/internal with storage temp:score_args
data modify storage temp:score_args Thrower set from entity @s Thrower
data modify storage temp:score_args points set from entity @s Item.components."minecraft:custom_data".points
function game:state/round/score/internal with storage temp:score_args
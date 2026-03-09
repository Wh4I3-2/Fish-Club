tag @r[tag=!checked] add check

tag @a[tag=check] add checked
execute if score @a[tag=check,limit=1] points > .highest_points temp run scoreboard players operation .highest_points temp = @a[tag=check,limit=1] points 

tag @a[tag=check] remove check

execute if entity @a[tag=!checked] run function game:state/round/round_winner
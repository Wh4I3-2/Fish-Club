tag @r[tag=!checked] add check

tag @a[tag=check] add checked
execute if score @a[tag=check,limit=1] wins > .highest_wins temp run scoreboard players operation .highest_wins temp = @a[tag=check,limit=1] wins 

tag @a[tag=check] remove check

execute if entity @a[tag=!checked] run function game:state/round/game_winner
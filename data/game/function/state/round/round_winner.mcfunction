tag @r[tag=!checked] add check

tag @a[tag=check] add checked
execute if score @a[tag=check,limit=1] kills > .highest_kills temp run scoreboard players operation .highest_kills temp = @a[tag=check,limit=1] kills 

tag @a[tag=check] remove check

execute if entity @a[tag=!checked] run function game:state/round/round_winner
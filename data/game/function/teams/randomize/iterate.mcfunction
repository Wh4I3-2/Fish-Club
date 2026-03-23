#_ Args = i: int
execute store result score .count temp run data get storage game:teams randomize
scoreboard players remove .count temp 1
execute store result storage game:teams random.end int 1 run scoreboard players get .count temp
data modify storage game:teams random.start set value 0

execute store result storage game:teams add.index int 1 run function utils:random with storage game:teams random
function game:teams/randomize/add with storage game:teams add

$scoreboard players set .i temp $(i)
scoreboard players remove .i temp 1
execute store result storage game:teams iterate.i int 1 run scoreboard players get .i temp
execute unless score .i temp matches ..-1 run function game:teams/randomize/iterate with storage game:teams iterate

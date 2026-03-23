scoreboard players set .min temp 2147483647

scoreboard players operation .count temp = .teams game.config
scoreboard players remove .count temp 1
execute store result storage game:teams find.i int 1 run scoreboard players get .count temp

function game:teams/join/find with storage game:teams find
function game:teams/join/join with storage game:teams found

data remove storage game:teams find
data remove storage game:teams found
data remove storage game:teams check

data modify storage game:teams randomize set from storage game:teams list
data modify storage game:teams order set value []

execute store result storage game:teams iterate.i int 1 run data get storage game:teams list
function game:teams/randomize/iterate with storage game:teams iterate

data remove storage game:teams iterate
data remove storage game:teams random
data remove storage game:teams randomize
data remove storage game:teams add

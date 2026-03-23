function game:state/_current/tick with storage game:data

execute store success storage game:check gameStateChanged byte 1 run data modify storage game:data prevState set from storage game:data state
execute if data storage game:check { gameStateChanged:1b } run function game:state/_current/enter with storage game:data

data remove storage game:check gameStateChanged

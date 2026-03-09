function game:state/_common/tick { state:"round" }

### Args: args:{objective: <string>, target: <string> = "@s", tickLength: <int> = 1, length: <int>}
data merge storage game:round {clockArgs:{args:{ objective: "game.data", target: ".time" }}}
execute store result storage game:round clockArgs.args.length int 1 run scoreboard players get .round.length game.config
function utils:clock with storage game:round clockArgs

execute store result score .time_left game.data run scoreboard players get .round.length game.config
scoreboard players operation .time_left game.data -= .time game.data

execute store result storage game:round timeLeft.time int 1 run scoreboard players get .time_left game.data

execute if score .time_left game.data matches ..1 run scoreboard players add .round game.data 1
execute if score .time_left game.data matches ..1 run function game:state/round/round_end

execute if score .round game.data > .rounds game.config run function game:state/round/game_end

function utils:format/timer/ticks with storage game:round timeLeft

execute as @a run function game:state/round/actionbar
execute run function game:item/owned_item

data remove storage game:round clockArgs
data remove storage game:round timeLeft

effect give @a minecraft:saturation 20 0 true
effect give @a minecraft:instant_health 20 0 true

execute as @a at @s positioned ~ -100 ~ if entity @s[dy=80] run function game:state/round/kill

execute as @a run function game:state/round/inventory
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{kill:true}}}}]

function game:state/round/point

execute as @a store result score @s fishes run clear @s emerald[custom_data={points:1}] 0

function game:state/round/events
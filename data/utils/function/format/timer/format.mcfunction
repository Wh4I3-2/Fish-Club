### Args: millis: <int>, seconds: <int>, minutes: <int>
### Output: utils:format/timer output: <string>
data remove storage utils:format/timer output
$data modify storage utils:format/timer concatArgs set value {args:{a:"$(minutes)", b:":", output:"utils:format/timer concatArgs.args.a"}}

function utils:strings/concat with storage utils:format/timer concatArgs

$scoreboard players set .num math $(seconds)
execute if score .num math matches 0..9 run data modify storage utils:format/timer concatArgs.args.b set value "0"
execute if score .num math matches 0..9 run function utils:strings/concat with storage utils:format/timer concatArgs
$data modify storage utils:format/timer concatArgs.args.b set value "$(seconds)"
function utils:strings/concat with storage utils:format/timer concatArgs

data modify storage utils:format/timer concatArgs.args.b set value "."
function utils:strings/concat with storage utils:format/timer concatArgs

$scoreboard players set .num math $(millis)
execute if score .num math matches 10..99 run data modify storage utils:format/timer concatArgs.args.b set value "0"
execute if score .num math matches 0..9 run data modify storage utils:format/timer concatArgs.args.b set value "00"
execute if score .num math matches 0..99 run function utils:strings/concat with storage utils:format/timer concatArgs
$data modify storage utils:format/timer concatArgs.args.b set value "$(millis)"
data modify storage utils:format/timer concatArgs.args.output set value "utils:format/timer output"
function utils:strings/concat with storage utils:format/timer concatArgs

scoreboard players reset .num math
data remove storage utils:format/timer concatArgs
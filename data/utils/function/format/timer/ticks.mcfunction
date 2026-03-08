### Args: time: <int>
### Output: utils:format/timer output: <string>
$scoreboard players set .time math $(time)

scoreboard players set .num math 50
scoreboard players operation .time math *= .num math
data merge storage utils:format/timer {moduloArgs:{b:1000}}
execute store result storage utils:format/timer moduloArgs.a int 1 run scoreboard players get .time math
function math:modulo with storage utils:format/timer moduloArgs
execute store result storage utils:format/timer formatArgs.millis int 1 run scoreboard players get .result math

scoreboard players set .num math 1000
scoreboard players operation .time math /= .num math
data merge storage utils:format/timer {moduloArgs:{b:60}}
execute store result storage utils:format/timer moduloArgs.a int 1 run scoreboard players get .time math
function math:modulo with storage utils:format/timer moduloArgs
execute store result storage utils:format/timer formatArgs.seconds int 1 run scoreboard players get .result math

scoreboard players set .num math 60
scoreboard players operation .time math /= .num math
execute store result storage utils:format/timer formatArgs.minutes int 1 run scoreboard players get .time math

function utils:format/timer/format with storage utils:format/timer formatArgs

data remove storage utils:format/timer formatArgs
data remove storage utils:format/timer moduloArgs
scoreboard players reset .num math
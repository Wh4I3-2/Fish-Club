### Args: offset: <int>, path: <string>, length: <int>, frameLength: <int>, name: <string>

$function utils:pragma_once {call:'function utils:clock {args:{objective:"animations",target:".$(name)",length:$(length),tickLength:$(frameLength)}}'}

$data merge storage visuals:animations {modulo:{b:$(length)}}
$execute store result score .offset animations run scoreboard players get .$(name) animations
$scoreboard players add .offset animations $(offset)
execute store result storage visuals:animations modulo.a int 1 run scoreboard players get .offset animations
function math:modulo with storage visuals:animations modulo
data remove storage visuals:animations modulo

$data merge storage visuals:animations {frameArgs:{path:"$(path)"}}
execute store result storage visuals:animations frameArgs.frame int 1 run scoreboard players get .result math

function visuals:animations/frame with storage visuals:animations frameArgs
data remove storage visuals:animations frameArgs
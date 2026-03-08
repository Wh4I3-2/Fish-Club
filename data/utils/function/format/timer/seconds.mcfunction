### Args: time: <int>
### Output: utils:format/timer output: <string>
$data merge storage utils:format/timer {time:$(time)}
execute store result storage utils:format/timer time int 20 run data get storage utils:format/timer time

function utils:format/timer/ticks with storage utils:format/timer

data remove storage utils:format/timer time
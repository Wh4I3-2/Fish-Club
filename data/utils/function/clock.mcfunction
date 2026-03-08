### Args: args:{objective: <string>, target: <string> = "@s", tickLength: <int> = 1, length: <int>}

data remove storage utils:clock args
$data merge storage utils:clock {args:$(args)}

execute unless data storage utils:clock args.target run data merge storage utils:clock {args:{target:"@s"}}
execute unless data storage utils:clock args.tickLength run data merge storage utils:clock {args:{tickLength:1}}

execute if data storage utils:clock {args:{tickLength:1}} run function utils:clock/simple_clock with storage utils:clock args
execute unless data storage utils:clock {args:{tickLength:1}} run function utils:clock/advanced_clock with storage utils:clock args
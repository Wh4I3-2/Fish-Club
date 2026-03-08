### Args: args:{a: <string>, b: <string>, output: <string> = "utils:strings ouput"}
### Output: utils:strings output: <string>
$data modify storage utils:strings args set value $(args)

execute unless data storage utils:strings args.output run data modify storage utils:strings args.output set value "utils:strings output"

function utils:strings/concat/internal with storage utils:strings args

data remove storage utils:strings args
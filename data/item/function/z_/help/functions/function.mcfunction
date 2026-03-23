#_ Args = function: string, args: []{ name: string, type: string, optional: ?bool, default: ?string }, description: string

$data modify storage item:help function.args set value $(args)

data modify storage item:help function.value set value []

data modify storage item:help function.value append value ""
$data modify storage item:help function.value append value { text: "$(function)", color: "#89b4fa" }

execute store result storage item:help function.args_args.len int 1 run data get storage item:help function.args
execute unless data storage item:help {function:{args_args:{len:0}}} run function item:z_/help/functions/args

data modify storage item:help function.value append value { text: " - ", color: "#77757e" }
$data modify storage item:help function.value append value "$(description)"

function item:z_/help/tellraw with storage item:help function

data remove storage item:help function

#_ Args = i: int, len: int

$scoreboard players set .a help.item.iterate $(i)
execute if score .a help.item.iterate matches 1.. run data modify storage item:help function.value append value { text: ", ", color: "#b0b0b9" }

$data modify storage item:help function.arg.args set from storage item:help function.args[$(i)]
function item:z_/help/functions/arg with storage item:help function.arg

scoreboard players add .a help.item.iterate 1
execute store result storage item:help function.args_args.i int 1 run scoreboard players get .a help.item.iterate
$data modify storage item:help function.args_args.len set value $(len)
$execute unless score .a help.item.iterate matches $(len).. run function item:z_/help/functions/iterate_args with storage item:help function.args_args

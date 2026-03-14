
data modify storage item:help function.value append value " "
data modify storage item:help function.value append value { text: "{", color: "#b0b0b9" }
data modify storage item:help function.value append value { text: "args", color: "white" }
data modify storage item:help function.value append value { text: ": ", color: "#77757e" }
data modify storage item:help function.value append value { text: "{", color: "#b0b0b9" }
data modify storage item:help function.args_args.i set value 0
function item:z_/help/functions/iterate_args with storage item:help function.args_args
data modify storage item:help function.value append value { text: "}", color: "#b0b0b9" }

#_ Args = args:{ name: string, type: string, ?optional: bool, default: ?string }

$data modify storage item:help function.arg.args set value $(args)

data modify storage item:help function.value append from storage item:help function.arg.args.name
data modify storage item:help function.value append value { text: ": ", color: "#b0b0b9" }

execute if data storage item:help {function:{arg:{args:{optional:true}}}} run data modify storage item:help function.value append value { text: "?", color: "#77757e", hover_event: { action: "show_text", value: "The \"?\" means that this argument is optional" } }
data modify storage item:help function.arg.type.text set from storage item:help function.arg.args.type
data modify storage item:help function.arg.type.color set value "#cba6f7"
data modify storage item:help function.value append from storage item:help function.arg.type

execute if data storage item:help function.arg.args.default run data modify storage item:help function.value append value { text: " = ", color: "#b0b0b9" }
execute if data storage item:help function.arg.args.default run data modify storage item:help function.arg.default.text set from storage item:help function.arg.args.default
execute if data storage item:help function.arg.args.default run data modify storage item:help function.arg.default.color set value "#a6e3a1"
execute if data storage item:help function.arg.args.default run data modify storage item:help function.value append from storage item:help function.arg.default

#_ Args = current: string

$data modify storage item:help current set value "$(current)"
data modify storage item:help value set value []
data modify storage item:help value append value { text: "Pages: ", color: "#b0b0b9" }

$function item:z_/help/footer/add_page { current: "$(current)", title: "Main", description: { text: "What all of this is" }, trigger: "help.item.main" }
$function item:z_/help/footer/add_page { current: "$(current)", title: "Functions", description: { text: "A list of functions you should know" }, trigger: "help.item.functions" }
$function item:z_/help/footer/add_page { current: "$(current)", title: "Registry", description: { text: "What the \"Registry\" is, and how to use it" }, trigger: "help.item.registry" }

function item:z_/help/tellraw with storage item:help

data remove storage item:help value
data remove storage item:help current

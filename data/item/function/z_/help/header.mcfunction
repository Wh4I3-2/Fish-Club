#_ Args = title: string

$data modify storage item:help header.title set value "$(title)"

tellraw @s ""

data modify storage item:help header.value set value []
data modify storage item:help header.value append value { text: "===== ", color: "#77757e", bold: true }
data modify storage item:help header.value append value { text: "Wh4I3's Item Utils", color: "#ffdc83", bold: true }
execute unless data storage item:help { header: { title: "" }} run data modify storage item:help header.value append value " | "
$execute unless data storage item:help { header: { title: "" }} run data modify storage item:help header.value append value { text: "$(title)", color: "#ffdc83", bold: true }
data modify storage item:help header.value append value { text: " =====", color: "#77757e", bold: true }

function item:z_/help/tellraw with storage item:help header

data remove storage item:help header

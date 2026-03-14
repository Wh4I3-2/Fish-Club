#_ Args = current: string, title: string, description: Text, trigger: string

$data modify storage item:help page.title set value "$(title)"
$data modify storage item:help page.trigger set value "$(trigger)"
$data modify storage item:help page.description set value $(description)

data modify storage item:help page.isCurrent set value false
$execute if data storage item:help { page: { title: "$(current)" }} run data modify storage item:help page.isCurrent set value true

data modify storage item:help value append value { text: "[", color: "#77757e" }
function item:z_/help/footer/page with storage item:help page
data modify storage item:help value append value { text: "]", color: "#77757e" }
data modify storage item:help value append value " "

data remove storage item:help page

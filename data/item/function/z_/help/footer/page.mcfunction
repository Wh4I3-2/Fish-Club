#_ Args = isCurrent: bool, title: string, description: Text

$data modify storage item:help page.isCurrent set value $(isCurrent)
$data modify storage item:help page.item set value { text: "$(title)" }
$data modify storage item:help page.item.hover_event set value { action: "show_text", value: $(description) } 

execute if data storage item:help { page: { isCurrent: 1 }} run data modify storage item:help page.item.bold set value true
execute if data storage item:help { page: { isCurrent: 1 }} run data modify storage item:help page.item.color set value "#ffdc83"

$execute unless data storage item:help { page: { isCurrent: 1 }} run data modify storage item:help page.item.click_event set value { action: "run_command", command: "trigger $(trigger)" }
execute unless data storage item:help { page: { isCurrent: 1 }} run data modify storage item:help page.item.color set value "#b15a2f"

data modify storage item:help value append from storage item:help page.item

data remove storage item:help page.isCurrent
data remove storage item:help page.item

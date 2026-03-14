#_ Args = location: string

$function $(location)/item { id: "data modify storage item:args id set value", item: "data modify storage item:args item set value" }
$data modify storage item:args location set value "$(location)"
function item:z_/add_to_registry with storage item:args

data remove storage item:args id
data remove storage item:args item

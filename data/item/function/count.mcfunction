#_ Args   = args:{ id: string }
#_ Result = item:result value: int

$data modify storage item:args count set value $(args)

$function item:get {args:$(args)}

data modify storage item:args count.item set from storage item:result value.item

execute unless data storage item:result value run data modify storage item:args count.item set from storage item:args count.id

return run function item:z_/count with storage item:args count

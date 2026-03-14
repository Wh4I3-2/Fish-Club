#_ Args = args:{ id: string, count: ?int = 1 }

$data modify storage item:args give set value $(args)

$function item:get {args:$(args)}

execute unless data storage item:args give.count run data modify storage item:args give.count set value 1
data modify storage item:args give.item set from storage item:result value.item

execute unless data storage item:result value run data modify storage item:args give.item set from storage item:args give.id

function item:z_/give with storage item:args give

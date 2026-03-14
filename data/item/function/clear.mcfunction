#_ Args = args:{ id: string, count: ?int }

$data modify storage item:args clear set value $(args)

$function item:get {args:$(args)}

data modify storage item:args clear.item set from storage item:result value.item

execute unless data storage item:result value run data modify storage item:args clear.item set from storage item:args clear.id

execute if data storage item:args clear.count run return run function item:z_/clear with storage item:args clear
execute unless data storage item:args clear.count run return run function item:z_/clear_all with storage item:args clear

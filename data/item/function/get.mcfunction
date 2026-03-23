#_ Args   = args:{ id: string }
#_ Result = item:result value: RegistryItem

$data modify storage item:args get set value $(args)

data remove storage item:result value
function item:z_/get with storage item:args get

data remove storage item:args get

#_ Args   = id: string
#_ Result = item:result value: RegistryItem
$data modify storage item:result value set from storage item:registry items.'$(id)'

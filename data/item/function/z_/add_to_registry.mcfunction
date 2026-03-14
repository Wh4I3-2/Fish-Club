#_ Args = id: string, location: string, item: Item

$data modify storage item:registry items.$(id).id set value '$(id)' 
$data modify storage item:registry items.$(id).location set value '$(location)' 
$data modify storage item:registry items.$(id).item set value '$(item)' 

setblock 0 200 0 chest
$item replace block 0 200 0 container.0 with $(item)
$data modify storage item:registry items.$(id).nbt set from block 0 200 0 Items[0]  
$data remove storage item:reigstry items.$(id).nbt.Slot

setblock 0 200 0 air

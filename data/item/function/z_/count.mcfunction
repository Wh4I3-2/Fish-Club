#_ Args   = item: Item
#_ Result = item:result value: int
data remove storage item:args count
$return run execute store result storage item:result value int 1 run clear @s $(item) 0

#_ Args = UUID: UUID
$execute if data entity @s { Thrower: $(UUID)} run data modify entity @s Owner set from entity @s Thrower


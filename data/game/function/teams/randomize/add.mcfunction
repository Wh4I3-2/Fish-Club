#_ Args = index: int
$data modify storage game:teams order append from storage game:teams randomize[$(index)]
$data remove storage game:teams randomize[$(index)]

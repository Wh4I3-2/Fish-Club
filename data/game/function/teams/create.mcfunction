#_ Args = id: string, name: string, color: string, texture: string
$team remove $(id)
$team add $(id)
$team modify $(id) color $(color)
$team modify $(id) displayName [ "", { color: "white", player: { properties: [{ name: "textures", value: "$(texture)" }]}}, " ", { text: "$(name)", bold: true }]
$team modify $(id) prefix [ "", { color: "white", player: { properties: [{ name: "textures", value: "$(texture)" }]}}, " " ]
$team modify $(id) collisionRule never
$team modify $(id) friendlyFire false
$team modify $(id) seeFriendlyInvisibles true

$data modify storage game:teams list append value "$(id)"

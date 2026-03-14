function item:z_/help/header { title: "Functions" }

function item:z_/help/functions/function { function: "item:clear", args: [{ name: "id", type: "string" }, { name: "count", type: "int", optional: true }], description: "Removes a given amount of an item. If count isn't specified, all of the given type is cleared."}
function item:z_/help/functions/function { function: "item:count", args: [{ name: "id", type: "string" }], description: "Gets how much of a given item someone has. Result is stored at 'storage item:result value', but can also be retrieved with execute store result."}
function item:z_/help/functions/function { function: "item:get", args: [{ name: "id", type: "string" }], description: "Gets the registry entry for item with given id. Result is stored at 'storage item:result value'"}
function item:z_/help/functions/function { function: "item:give", args: [{ name: "id", type: "string" }, { name: "count", type: "int", optional: true, default: "1" }], description: "Gives an amount of a specified item."}
function item:z_/help/functions/function { function: "item:help", args: [], description: "Show the help menu"}
function item:z_/help/functions/function { function: "item:list", args: [], description: "Lists all the items in the registry."}
function item:z_/help/functions/function { function: "item:register", args: [{ name: "location", type: "string" }], description: "Register an item to the registry. This is done with a .mcfunction file located at the given location + /item."}

function item:z_/help/footer { current: "Functions" }

scoreboard players reset @s help.item.functions

---These function(s) are used for gathering informaton about CS:GO/TF2/CSS/Dota 2. Dota 2 may not support most of these functions.
---@class game
game = {
    ---@type bsp
    bsp = nil
}

---This will get the memory address of the local player. This function doesn't really need to be called considering OnConstellationTick and other callbacks already pass this information to your script.
---
--- ### Example
---
---```
---local localplayer = constellation.game.localplayer()
---local player_information = constellation.game.get_player( localplayer )
---constellation.log( "My name is " .. player_information["name"])
---```
---@return number The memory address of the local player.
---@type fun(): number
game.localplayer = function()end



---This will get the memory address of the local weapon. This function doesn't really need to be called considering OnConstellationTick and other callbacks already pass this information to your script.
---
--- ### Example
---
---```
---local localweapon = constellation.game.localweapon()
---local weapon_information = constellation.game.get_weapon( localweapon )
---constellation.log( "I have " .. weapon_information["ammo"] .. " ammo")
---```
---@return number The memory address of the local weapon.
---@type fun(): number
game.localweapon = function()end



---This returns a collection of player data. You must provide a player address to get their informaton. The table below is subject to change.
---
--- ### Example
---
---```
---local player_information = constellation.game.get_player( localplayer )
---constellation.log( "My SteamID is " .. player_information["steam"])
---
---local class_id, class_name = player_information:get_class( )
---constellation.log( "My class name is " .. class_name)
---```
---@param player_address number The memory address of the player.
---@return player The player data.
---@type fun(player_address: number): player
game.get_player = function(player_address)end



---This returns a collection of weapon data. You must provide a weapon address to get their informaton. The table below is subject to change.
---
--- ### Example
---
---```
---local weapon_information = constellation.game.get_player( localweapon )
---constellation.log( "My ammo is " .. weapon_information["ammo"])
---```
---@param weapon number The memory address of the weapon.
---@type fun(weapon: number): weapon
game.get_weapon = function(weapon)end



---This will get a table of all the enemies in your game. The content inside of this table will be the same as constellation.game.get_player.
---
--- ### Example
---
---```
---for _, player in pairs( constellation.game.get_enemies() ) do
---    constellation.log( player["name"] )
---end
---```
---@return table Table not documented.
---@type fun(): table
game.get_enemies = function()end



---This will get a table of all the teammates in your game. The content inside of this table will be the same as constellation.game.get_player.
---
--- ### Example
---
---```
---for _, player in pairs( constellation.game.get_teammates() ) do
---    constellation.log( player["name"] )
---end
---```
---@return table Table not documented.
---@type fun(): table
game.get_teammates = function()end



---This will get a table of all the players in your game. The content inside of this table will be the same as constellation.game.get_player.
---
--- ### Example
---
---```
---for _, player in pairs( constellation.game.get_players() ) do
---    constellation.log( player["name"] )
---end
---```
---@return table Table not documented.
---@type fun(): table
game.get_players = function()end



---This will check if another player is in your FOV range.
---
--- ### Example
---
---```
---for _, player in pairs( constellation.game.get_enemies() ) do
---    if constellation.game.is_in_fov( player, 10 ) then
---        constellation.log("I'm looking at " .. player["name"] )
---    end
---end
---```
---@param player number|player The player to check.
---@param range number The range to check.
---@return boolean True if the player is in your FOV range.
---@type fun(player: number|player, range: number): boolean
game.is_in_fov = function(player, range)end



---Get the last created entity index.
---
--- ### Example
---
---```
---see autodet.lua
---```
---@return number idk
---@type fun(): number
game.get_highest_entity_index = function()end



---This performs a bulk operation in the kernel driver instead of calling constellation.game.get_highest_entity_index and then looping through that value and calling constellation.game.get_entity. This is faster and uses less CPU. The content inside of this table will be the same as constellation.game.get_entity.
---
--- ### Example
---
---```
---
---```
---@return table Table not documented
---@type fun() : table
game.get_all_entities = function()end



---This performs a bulk operation in the kernel driver instead of calling constellation.game.get_highest_entity_index and then looping through that value and calling constellation.game.get_entity. This is faster and uses less CPU. This will directly get all entities that matches the class ID. The content inside of this table will be the same as constellation.game.get_entity.
---
--- ### Example
---
---```
---⠀-- 34 is dropped bomb in CS:GO as of this being written.
---for _, ent in pairs( constellation.game.get_entity_from_class( 34 ) ) do
---    ⠀-- loops through all dropped bombs in the game.
---end
---```
---@param class number The class ID to get.
---@return game_entity Game entity information.
---@type fun(class: number): game_entity
game.get_entity_from_class = function(class)end



---Returns a table of the entity based on the entity index. This is useful in combination with constellation.game.get_highest_entity_index.
---
--- ### Example
---
---```
---see autodet.lua
---```
---@param entity_index number The entity index to get.
---@return game_entity Game entity information.
---@type fun(entity_index: number): game_entity
game.get_entity = function(entity_index)end



---Gets the entity address from handle. This is useful for netvars that return a handle.
---
--- ### Example
---
---```
---
---```
---@param handler number The handle to get the entity address from.
---@type fun(handler: number): number
game.get_entity_from_handle = function(handler)end



---Gets the rendering bounds of a player.
---
--- ### Example
---This example gets the world space center of an entity. Though there is a function that does this already: constellation.game.get_world_space_center
---```
---local render_bounds = constellation.game.get_render_bounds( localplayer )
---local player_information = constellation.game.get_player( localplayer )
---local z_center = player_information["origin"]["z"] + ( render_bounds["min_z"] + render_bounds["max_z"] ) / 2
---```
---@param player_address number The memory address of the player.
---@type fun(player_address: number): game_render_bounds
game.get_renderer_bounds = function(player_address)end



---This gets the center of a rendering box.
---
--- ### Example
---
---```
---See autodet.lua
---```
---@param number number ?
---@type fun(number: number): origin
game.get_world_space_center = function(number)end



---This converts world coordinates to screen coordinates.
---
--- ### Example
---
---```
---for _, enemy in pairs( constellation.game.get_enemies() ) do
---    local x, y = constellation.game.world_to_screen( enemy["origin"]["x"], enemy["origin"]["y"], enemy["origin"]["z"])
---    constellation.windows.overlay.text( enemy["name"], "Default", x, y, { r = 255, g = 255, b = 255, a = 255 } )
---end
---```
---@param x number The x coordinate.
---@param y number The y coordinate.
---@param z number The z coordinate.
---@type fun(x: number, y: number, z: number): {x: number, y: number}
game.world_to_screen = function(x, y, z)end

---This gets the box dimensions of a player and converts it for your screen coordinates.
---
--- ### Example
---
---```
---function box.OnOverlayRender( width, height, center_x, center_y )
---    for _, player in pairs( constellation.game.get_enemies() ) do
---        local dimensions = constellation.game.get_box_dimensions( player )
---        if dimensions ~= nil then
---            constellation.windows.overlay.box( dimensions["left"], dimensions["top"], dimensions["right"], dimensions["bottom"] + 1, 2, { r = 255, g = 255, b = 255, a = 255 })
---        end
---    end
---end
---```
---@param player number The player to get the box dimensions of.
---@type fun(player: number): {left: number, top: number, right: number, bottom: number}
game.get_box_dimensions = function(player)end



---Gets global variables from CS:GO/TF2/CSS. Dota 2 unsupported.
---
--- ### Example
---
---```
---local globals = constellation.game.get_globals() 
---local curtime = globals["curtime"]
---```
---@type fun(): game_globals
game.get_globals = function()end



---Returns the class ID of the entity. This function is depreciated. Use get_class from constellation.game.get_entity or constellation.game.get_player or any other player/entity fetching function.
---
--- ### Example
---
---```
---local entity = constellation.game.get_entity( m_hThrower )
---local class_id = constellation.game.get_class( entity )
---```
---@param entity_index number The entity index to get the class ID of.
---@return number The class ID of the entity.
---@type fun(entity_index: number): number
game.get_class = function(entity_index)end



---Checks if your hero is visible in Dota 2.
---
--- ### Example
---
---```
---if constellation.game.is_hero_visible( ) then
---    print("The opposing team sees you!")
---end
---```
---@return boolean Whether or not your hero is visible.
---@type fun(): boolean
game.is_hero_visible = function()end



---This will return a table exactly like constellation.game.get_player, except it will get the nearest player. The boolean parameter should be false unless you wish to include teammates.
---
--- ### Example
---
---```
---local closest_player, distance = constellation.game.get_closest_player( false )
---constellation.log(closest_player["name"] .. " closest to you (" .. distance .. ").")
---```
---@param include_teammates boolean Whether or not to include teammates.
---@return player, number The player and the distance to the player.
---@type fun(include_teammates: boolean): player, number
game.get_closest_player = function(include_teammates)end



---This will return a table exactly like constellation.game.get_player, except it will get the player closest to your crosshair depending on the FOV provided. The boolean parameter should be false unless you wish to include teammates. The x and y returns are the calculated angle from your crosshair to the player. true_fov is the exact FOV that was calculated.
---
--- ### Example
---
---```
---local closest_player, angle_x, angle_y, true_fov = constellation.game.get_closest_player_fov( false, 7, 7.5 )
---if not closest_player then
---    constellation.log("Nobody is in that FOV range.")
---    return
---end
---constellation.log(closest_player["name"] .. " closest to you (" .. angle_x .. ", " .. angle_y .. ": " .. true_fov .. ")")
---constellation.humanizer( angle_x, angle_y )
---```
---@param include_teammates boolean Whether or not to include teammates.
---@param bone number The bone to get the angle from.
---@param fov number The FOV to get the angle from.
---@return player, number, number, number The player, the angle from the crosshair to the player, the calculated FOV, and the calculated angle from the crosshair to the player.
---@type fun(include_teammates: boolean, bone: number, fov: number): player, number, number, number
game.get_closest_player_fov = function(include_teammates, bone, fov)end



---This will get the health of Roshan in Dota 2. The health of Roshan will only update if not dormant.
---
--- ### Example
---
---```
---constellation.log( "Roshan has " .. constellation.game.get_roshan() .. " health!")
---```
---@return number The health of Roshan.
---@type fun(): number
game.get_roshan = function()end
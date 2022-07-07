---These function(s) are used for gathering informaton about CS:GO/TF2/CSS/Dota 2. Dota 2 may not support most of these functions.
---@type game
game = {
    ---@type bsp
    bsp = nil
}

---This will get the memory address of the local player. This function doesn't really need to be called considering OnConstellationTick and other callbacks already pass this information to your script.
---
---@type fun(): number
---@return number The memory address of the local player.
---.
--- ### Example
---
---```
---local localplayer = constellation.game.localplayer()
---local player_information = constellation.game.get_player( localplayer )
---constellation.log( "My name is " .. player_information["name"])
---```
game.localplayer = function()end



---This will get the memory address of the local weapon. This function doesn't really need to be called considering OnConstellationTick and other callbacks already pass this information to your script.
---
---@type fun(): number
---@return number The memory address of the local weapon.
---.
--- ### Example
---
---```
---local localweapon = constellation.game.localweapon()
---local weapon_information = constellation.game.get_weapon( localweapon )
---constellation.log( "I have " .. weapon_information["ammo"] .. " ammo")
---```
game.localweapon = function()end



---This returns a collection of player data. You must provide a player address to get their informaton. The table below is subject to change.
---
---@type fun(player_address: number): player
---@param player_address number The memory address of the player.
---@return player The player data.
---.
--- ### Example
---
---```
---local player_information = constellation.game.get_player( localplayer )
---constellation.log( "My SteamID is " .. player_information["steam"])
---
---local class_id, class_name = player_information:get_class( )
---constellation.log( "My class name is " .. class_name)
---```
game.get_player = function()end



---This returns a collection of weapon data. You must provide a weapon address to get their informaton. The table below is subject to change.
---
---@type fun(weapon: number): weapon
---@param weapon number The memory address of the weapon.
---.
--- ### Example
---
---```
---local weapon_information = constellation.game.get_player( localweapon )
---constellation.log( "My ammo is " .. weapon_information["ammo"])
---```
game.get_weapon = function()end



---This will get a table of all the enemies in your game. The content inside of this table will be the same as constellation.game.get_player.
---
---@type fun(): table
---@return table Table not documented.
---.
--- ### Example
---
---```
---for _, player in pairs( constellation.game.get_enemies() ) do
---    constellation.log( player["name"] )
---end
---```
game.get_enemies = function()end



---This will get a table of all the teammates in your game. The content inside of this table will be the same as constellation.game.get_player.
---
---@type fun(): table
---@return table Table not documented.
---.
--- ### Example
---
---```
---for _, player in pairs( constellation.game.get_teammates() ) do
---    constellation.log( player["name"] )
---end
---```
game.get_teammates = function()end



---This will get a table of all the players in your game. The content inside of this table will be the same as constellation.game.get_player.
---
---@type fun(): table
---@return table Table not documented.
---.
--- ### Example
---
---```
---for _, player in pairs( constellation.game.get_players() ) do
---    constellation.log( player["name"] )
---end
---```
game.get_players = function()end



---This will check if another player is in your FOV range.
---
---@type fun(player: number|player, range: number): boolean
---@param player number|player The player to check.
---@param range number The range to check.
---@return boolean True if the player is in your FOV range.
---.
--- ### Example
---
---```
---for _, player in pairs( constellation.game.get_enemies() ) do
---    if constellation.game.is_in_fov( player, 10 ) then
---        constellation.log("I'm looking at " .. player["name"] )
---    end
---end
---```
game.is_in_fov = function()end



---Get the last created entity index.
---
---@type fun(): number
---@return number idk
---.
--- ### Example
---
---```
---see autodet.lua
---```
game.get_highest_entity_index = function()end



---This performs a bulk operation in the kernel driver instead of calling constellation.game.get_highest_entity_index and then looping through that value and calling constellation.game.get_entity. This is faster and uses less CPU. The content inside of this table will be the same as constellation.game.get_entity.
---
---@type fun() : table
---@return table Table not documented
---.
--- ### Example
---
---```
---
---```
game.get_all_entities = function()end



---This performs a bulk operation in the kernel driver instead of calling constellation.game.get_highest_entity_index and then looping through that value and calling constellation.game.get_entity. This is faster and uses less CPU. This will directly get all entities that matches the class ID. The content inside of this table will be the same as constellation.game.get_entity.
---
---@type fun(class: number): game_entity
---@param class number The class ID to get.
---@return game_entity Game entity information.
---.
--- ### Example
---
---```
---⠀-- 34 is dropped bomb in CS:GO as of this being written.
---for _, ent in pairs( constellation.game.get_entity_from_class( 34 ) ) do
---    ⠀-- loops through all dropped bombs in the game.
---end
---```
game.get_entity_from_class = function()end



---Returns a table of the entity based on the entity index. This is useful in combination with constellation.game.get_highest_entity_index.
---
---@type fun(entity_index: number): game_entity
---@param entity_index number The entity index to get.
---@return game_entity Game entity information.
---.
--- ### Example
---
---```
---see autodet.lua
---```
game.get_entity = function()end



---Gets the entity address from handle. This is useful for netvars that return a handle.
---
---@type fun(number: number): number
---.
--- ### Example
---
---```
---
---```
game.get_entity_from_handle = function()end



---Gets the rendering bounds of a player.
---
---@type fun(number: number): game_render_bounds
---.
--- ### Example
---This example gets the world space center of an entity. Though there is a function that does this already: constellation.game.get_world_space_center
---```
---local render_bounds = constellation.game.get_render_bounds( localplayer )
---local player_information = constellation.game.get_player( localplayer )
---local z_center = player_information["origin"]["z"] + ( render_bounds["min_z"] + render_bounds["max_z"] ) / 2
---```
game.get_renderer_bounds = function()end



---This gets the center of a rendering box.
---
---@type fun(number: number): origin
---.
--- ### Example
---
---```
---See autodet.lua
---```
game.get_world_space_center = function()end



---This converts world coordinates to screen coordinates.
---
---@type fun(x: number, y: number, z: number): {x: number, y: number}
---.
--- ### Example
---
---```
---for _, enemy in pairs( constellation.game.get_enemies() ) do
---    local x, y = constellation.game.world_to_screen( enemy["origin"]["x"], enemy["origin"]["y"], enemy["origin"]["z"])
---    constellation.windows.overlay.text( enemy["name"], "Default", x, y, { r = 255, g = 255, b = 255, a = 255 } )
---end
---```
game.world_to_screen = function()end



---This gets the box dimensions of a player and converts it for your screen coordinates.
---
---@type fun(player: number): {left: number, top: number, right: number, bottom: number}
---@param player number The player to get the box dimensions of.
---.
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
game.get_box_dimensions = function()end



---Gets global variables from CS:GO/TF2/CSS. Dota 2 unsupported.
---
---@type fun(): game_globals
---.
--- ### Example
---
---```
---local globals = constellation.game.get_globals() 
---local curtime = globals["curtime"]
---```
game.get_globals = function()end



---Returns the class ID of the entity. This function is depreciated. Use get_class from constellation.game.get_entity or constellation.game.get_player or any other player/entity fetching function.
---
---@type fun(entity_index: number): number
---@param entity_index number The entity index to get the class ID of.
---@return number The class ID of the entity.
---.
--- ### Example
---
---```
---local entity = constellation.game.get_entity( m_hThrower )
---local class_id = constellation.game.get_class( entity )
---```
game.get_class = function()end



---Checks if your hero is visible in Dota 2.
---
---@type fun(): boolean
---@return boolean Whether or not your hero is visible.
---.
--- ### Example
---
---```
---if constellation.game.is_hero_visible( ) then
---    print("The opposing team sees you!")
---end
---```
game.is_hero_visible = function()end



---This will return a table exactly like constellation.game.get_player, except it will get the nearest player. The boolean parameter should be false unless you wish to include teammates.
---
---@type fun(include_teammates: boolean): game_player, number
---@param include_teammates boolean Whether or not to include teammates.
---@return game_player, number The player and the distance to the player.
---.
--- ### Example
---
---```
---local closest_player, distance = constellation.game.get_closest_player( false )
---constellation.log(closest_player["name"] .. " closest to you (" .. distance .. ").")
---```
game.get_closest_player = function()end



---This will return a table exactly like constellation.game.get_player, except it will get the player closest to your crosshair depending on the FOV provided. The boolean parameter should be false unless you wish to include teammates. The x and y returns are the calculated angle from your crosshair to the player. true_fov is the exact FOV that was calculated.
---
---@type fun(include_teammates: boolean, bone: number, fov: number): game_player, number, number, number
---@param include_teammates boolean Whether or not to include teammates.
---@param bone number The bone to get the angle from.
---@param fov number The FOV to get the angle from.
---@return game_player, number, number, number The player, the angle from the crosshair to the player, the calculated FOV, and the calculated angle from the crosshair to the player.
---.
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
game.get_closest_player_fov = function()end



---This will get the health of Roshan in Dota 2. The health of Roshan will only update if not dormant.
---
---@type fun(): number
---@return number The health of Roshan.
---.
--- ### Example
---
---```
---constellation.log( "Roshan has " .. constellation.game.get_roshan() .. " health!")
---```
game.get_roshan = function()end
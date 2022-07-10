---These function(s) are for BSP parsing. See this post about usefulness and inconsistencies (click me).
---@class bsp
local bsp = {}



---This will BSP parse the current map you are playing on. It is safe to call this function inside of OnConstellationTick because Constellation will only actually load the .bsp if it detects you had left the game or changed maps at one point.
--- ### Example
---
---```
---constellation.game.bsp.parse( )
---```
---@type fun(): boolean
bsp.parse = function()end



---Performs a trace ray using the parsed BSP data.
---
--- ### Example
---
---```
---function test_script.OnConstellationTick( localplayer )
---
---⠀⠀-- are we ingame?
---⠀⠀if localplayer == nil then return end
---
---⠀⠀--[[
    ---⠀⠀⠀⠀.bsp parse the map we're currently on.
    ---
    ---⠀⠀⠀⠀this is okay to put here in OnConstellationTick, this only calls one memory reading operation.
    ---⠀⠀⠀⠀if something is parsed already and is the same map, it won't reparse the same map data.
    ---⠀⠀--]]
    ---⠀⠀if not constellation.game.bsp.parse() then return end
    ---
    ---⠀⠀-- get localplayer information
    ---⠀⠀local player_information = constellation.game.get_player( localplayer )
    ---⠀⠀if not player_information then return end
    ---
    ---⠀⠀-- loop through all enemies.
    ---⠀⠀for _, enemy in pairs( constellation.game.get_enemies() ) do 
    ---
---⠀⠀⠀⠀-- trace_ray our eye position to their eyes.
---⠀⠀⠀⠀local result, end_x, end_y, end_z = constellation.game.bsp.trace_ray ( 
    ---⠀⠀⠀⠀⠀⠀player_information["eye_position"]["x"], player_information["eye_position"]["y"], player_information["eye_position"]["z"],
    ---⠀⠀⠀⠀⠀⠀enemy["eye_position"]["x"], enemy["eye_position"]["y"], enemy["eye_position"]["z"]
    ---⠀⠀⠀⠀)
    ---
    ---⠀⠀⠀⠀⠀⠀-- if we see each other, let it be known.
    ---⠀⠀⠀⠀⠀⠀if result then
    ---⠀⠀⠀⠀⠀⠀⠀⠀print( string.format( "I see you %s (%f,%f,%f)!", enemy["name"], end_x, end_y, end_z ) )
    ---⠀⠀⠀⠀⠀⠀end
    ---
    ---⠀⠀⠀⠀end
    ---end
    ---```
    ---@param origin_x number The x coordinate of the origin.
    ---@param origin_y number The y coordinate of the origin.
    ---@param origin_z number The z coordinate of the origin.
    ---@param target_x number The x coordinate of the target.
    ---@param target_y number The y coordinate of the target.
    ---@param target_z number The z coordinate of the target.
    ---@return boolean, number, number, number The result of the trace ray.
    ---@type fun(origin_x:number, origin_y:number, origin_z:number, target_x:number, target_y:number, target_z:number):boolean, number, number, number
bsp.trace_ray = function(origin_x, origin_y, origin_z, target_x, target_y, target_z)end
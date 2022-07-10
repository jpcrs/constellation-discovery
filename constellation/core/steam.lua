---These function(s) interact with the Steam API.
---@class steam
local steam = {}



---Gets a summary of the Steam account. This function accepts the Steam ID of a player.
---
--- ### Example
---
---```
---local localplayer = constellation.game.localplayer()
---local player_information = constellation.game.get_player( localplayer )
---
---local steam_information = constellation.steam.get_summary( player_information["steam"] )
---print("Your Steam URL is: " .. steam_information["url"])
---```
---@param steam_id string The Steam ID of the player.
---@return steam_summary
---@type fun(steam_id: string): steam_summary
steam.get_summary = function(steam_id)end



---Gets the ban information of the Steam account. This function accepts the Steam ID of a player.
---
--- ### Example
---
---```
---local localplayer = constellation.game.localplayer()
---local player_information = constellation.game.get_player( localplayer )
---
---local steam_information = constellation.steam.get_bans( player_information["steam"] )
---print("Amount of VAC bans on your account: " .. steam_information["vac_bans"])
---```
---@param steam_id string The Steam ID of the player.
---@return steam_bans
---@type fun(steam_id: string): steam_bans
steam.get_bans = function(steam_id)end



---Gets all friends on a Steam account. This function accepts the Steam ID of a player.
---
--- ### Example
---
---```
---local localplayer = constellation.game.localplayer()
---local player_information = constellation.game.get_player( localplayer )
---
---local steam_information = constellation.steam.get_friends_list( player_information["steam"] )
---if steam_information == nil then
---    -- private or no friends
---    return
---end
---
---for _, friend in pairs(steam_information) do
---    print(friend["steamid"])
---end
---```
---@param steam_id string The Steam ID of the player.
---@return steam_friends[]
---@type fun(steam_id: string): steam_friends[]
steam.get_friends_list = function(steam_id)end



---Converts a Steam ID to a Steam Community ID.
---
---
---@type fun(steam_id: string): string
---@param steam_id string The Steam ID of the player.
---@return string The Steam Community ID of the player.
steam.to_community = function(steam_id)end
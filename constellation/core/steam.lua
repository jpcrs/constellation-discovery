---These function(s) interact with the Steam API.
---@type steam
local steam = {}



---Gets a summary of the Steam account. This function accepts the Steam ID of a player.
---
---@type fun(steam_id: string): steam_summary
---@param steam_id string The Steam ID of the player.
---@return steam_summary
---.
--- ### Example
---
---```
---local localplayer = constellation.game.localplayer()
---local player_information = constellation.game.get_player( localplayer )
---
---local steam_information = constellation.steam.get_summary( player_information["steam"] )
---print("Your Steam URL is: " .. steam_information["url"])
---```
steam.get_summary = function()end



---Gets the ban information of the Steam account. This function accepts the Steam ID of a player.
---
---@type fun(steam_id: string): steam_bans
---@param steam_id string The Steam ID of the player.
---@return steam_bans
---.
--- ### Example
---
---```
---local localplayer = constellation.game.localplayer()
---local player_information = constellation.game.get_player( localplayer )
---
---local steam_information = constellation.steam.get_bans( player_information["steam"] )
---print("Amount of VAC bans on your account: " .. steam_information["vac_bans"])
---```
steam.get_bans = function()end



---Gets all friends on a Steam account. This function accepts the Steam ID of a player.
---
---@type fun(steam_id: string): steam_friends[]
---@param steam_id string The Steam ID of the player.
---@return steam_friends[]
---.
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
steam.get_friends_list = function()end



---Converts a Steam ID to a Steam Community ID.
---
---
---@type fun(steam_id: string): string
---@param steam_id string The Steam ID of the player.
---@return community_id string The Steam Community ID of the player.
---.
steam.to_community = function()end
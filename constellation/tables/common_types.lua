---@type player
local player = {
    ---@type number
    address = nil,
    ---@type boolean
    is_alive = nil,
    ---@type number
    team = nil
}

---@type steam_sumary
steam_summary = {
    ---@type string
    name = nil,
    ---@type string
    steamid = nil,
    ---@type number
    visibility = nil,
    ---@type number
    profile_state = nil,
    ---@type number
    comments = nil,
    ---@type string
    url = nil,
    ---@type string
    avatar = nil,
    ---@type number
    lastlogoff = nil,
    ---@type number
    timecreated = nil,
    ---@type string
    game = nil,
    ---@type string
    gameid = nil,
}

---@type steam_bans
steam_summary = {
    ---@type string
    steamid = nil,
    ---@type boolean
    community = nil,
    ---@type boolean
    vac = nil,
    ---@type number
    vac_bans = nil,
    ---@type number
    days_since_ban = nil,
    ---@type number
    game_bans = nil,
    ---@type string
    economy = nil,
}

---@type steam_friends
steam_friends = {
    ---@type string
    steamid = nil,
    ---@type string
    relationship = nil,
    ---@type number
    friend_since = nil,
}
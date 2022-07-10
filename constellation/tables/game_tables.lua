---@class player
player = {
    ---@type number
    address = nil,
    ---@type boolean
    is_alive = nil,
    ---@type number
    team = nil,
    ---@type boolean
    dormant = nil,
    ---@type number
    index = nil,
    ---@type number
    tick_base = nil,
    ---@type number
    weapon = nil,
    ---@type string
    name = nil,
    ---@type string
    steam = nil,
    ---(CS:GO only)
    ---@type number
    shots_fired = nil,
    ---(TF2 only)
    ---@type number
    class = nil,
    ---(TF2 only)
    ---@type number
    conditions = nil,
    ---@type number[]
    origin = nil,
    ---@type number[]
    punch = nil,
    ---@type fun(x:number):number, number, number, string
    get_bone_position = nil,
    ---@type fun(): number, string
    get_class = nil,
}

---@class weapon
weapon = {
    ---@type number
    address = nil,
    ---@type number
    id = nil,
    ---@type number
    ammo = nil,
    ---(CS:GO Only)
    ---@type boolean
    is_pistol = nil,
    ---(CS:GO Only)
    ---@type boolean
    is_knife = nil,
    ---(CS:GO Only)
    ---@type boolean
    is_misc = nil,
    ---(CS:GO Only)
    ---@type boolean
    is_sniper = nil,
    ---(CS:GO Only)
    ---@type boolean
    is_nade = nil,
    ---(TF2 Only),
    ---@type number
    charge = nil,
    ---(TF2 Only)
    ---@type number
    can_backstab = nil,
    ---(TF2 Only)
    ---@type number
    ammo_type = nil,
}

---@class game_entity
game_entity = {
    ---@type number
    address = nil,
    ---@type boolean
    is_dormant = nil,
    ---@type number
    class = nil,
    ---@type origin
    origin = nil, 
    ---@type fun(): number, string
    get_class = nil,
}

---@class origin
origin = {
    ---@type number
    x = nil,
    ---@type number
    y = nil,
    ---@type number
    z = nil,
}

---@class game_render_bounds
game_render_bounds = {
    ---@type number 
    min_x = nil,
    ---@type number
    min_y = nil,
    ---@type number
    min_z = nil,
    ---@type number
    max_x = nil,
    ---@type number
    max_y = nil,
    ---@type number
    max_z = nil,
}

---@class game_globals
game_globals = {
    ---@type number
    realtime = nil,
    ---@type number
    framecount = nil,
    ---@type number
    absoluteframetime = nil,
    ---@type number
    absoluteframestarttime = nil,
    ---@type number
    curtime = nil,
    ---@type number
    max_clients = nil,
    ---@type number
    tickcount = nil,
    ---@type number
    interval_per_tick = nil,
    ---@type number
    interpolation_amount = nil,
    ---(CS:GO only)
    ---@type number
    sim_ticks_this_frame = nil,
    ---(CS:GO only)
    ---@type number
    network_protocol = nil,
    ---(CS:GO only)
    ---@type number
    client = nil,
    ---(CS:GO only)
    ---@type number
    remote_client = nil,
    ---(CS:GO only)
    ---@type number
    time_stamp_networking_base = nil,
    ---(CS:GO only)
    ---@type number
    time_stamp_randomize_window = nil,
    ---(TF2/CSS only)
    ---@type number
    shots = nil,
}
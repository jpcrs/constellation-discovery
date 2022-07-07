---Adds a new entry to `constellation\log.txt`. If you have `console.lua` loaded, it will also appear in the console box.
---
---@type fun(message: string)
---@param message string The message to log.
---.
--- ### Example
---
---```
---constellation.log( "Hello world!" )
---```
constellation.log = function()end



---This will either show or hide the console box. console.lua already uses this.
---
---@type fun(boolean)
---@param boolean boolean Whether to show or hide the console box.
---.
--- ### Example
---```
---⠀⠀-- turns on the console box.
---constellation.console( true )
---```
constellation.console = function()end



---This will make Constellation attempt to calibrate for an officially supported game.
---
---@type fun()
---.
--- ### Example
---
---```
---⠀⠀-- log that we're linking via script.
---constellation.log("Linking...")
---⠀⠀-- load our configuration (if any).
---constellation.configuration.load()
---⠀⠀-- set default pure mode settings. without this constellation.start will crash UNLESS you have a loaded configuration (which is what we did above).
---constellation.cmd( "set", "pure_mode_silence", self.silence )
---constellation.cmd( "set", "pure_mode_allow_modifications", self.allow_modifications )
---constellation.cmd( "set", "pure_mode_always_update", self.always_update )
---constellation.cmd( "set", "pure_mode_debug", self.debug )
---constellation.cmd( "set", "hypermode", self.hypermode )
---
---⠀⠀-- actually start/calibrate the cheat.
---constellation.start()
---```
constellation.start = function()end



---This will the basic data about a member's forum information.
---
---@type fun():string,number,number,number,number,number,boolean,boolean
---@return name,conversations,alerts,forum_id,posts,score,is_sdk,is_vip
---.
--- ### Example
---
---```
---⠀⠀-- get forum information
---local username, conversations, alerts, uid, posts, score, is_sdk, is_vip = constellation.forums()
---
---⠀⠀-- make constelia tell it to you.
---constellation.constelia.say( CONSTELIA_EVENT_SAY, "Hello " .. username .."!\nYou have " .. alerts .. " unread alert(s).\nYou have " .. conversations .. " unread conversation(s).")
---```
---
constellation.forums = function()end



---This will execute and direct the humanizer to perform algorithm to move to a specific angled location. Although this function seems ideal, a lot of the general humanizer modules will not work. The following modules are not included or present in this function:
---
---Humanizer #2 (Anxiety/Pro)
---Constelia's Memory (she will use only memory, never create new ones)
---Proper Player/FOV Scanning
---Humanizer Triggerbot
---TF2/CSS Compatibility (must be hard-coded)
---Bone Priority
---Dynamic FOV
---Smart Headshot Bone Selection
---Tick Considerations
---Ping Considerations
---Player Condition Considerations (for CS:GO & TF2)
---This function will also not work the humanizer is already active. These two will not overlap.
---
---@type fun(angle_x: number, angle_y: number)
---@param angle_x number The X angle to move to.
---@param angle_y number The Y angle to move to.
---.
--- ### Example
---
---local closest_player, angle_x, angle_y, true_fov = constellation.game.get_closest_player_fov( false, 7, 7.5 )
---
---if not closest_player then
---⠀⠀constellation.log("Nobody is in that FOV range.")
---⠀⠀return
---end
---
---constellation.humanizer( angle_x, angle_y )
constellation.humanizer = function()end



--- This will get the currently calibrated game.
---
---@type fun(): number
---@return number The game_id.
---.
--- ### Example
---
---```
---if constellation.get_game() == GAME_CSGO then
---⠀⠀constellation.log( "We're in CS:GO!" )
---end
---```
constellation.get_game = function()end



---This will execute a fantasy.cmd command for Constellation. fantasy.cmd is a command system similiar to terminal that executes code or actions depending on the input. This is only for advanced users. See the Web SDK using fantasy.cmd if you are curious on how to use this function.
---
---@type fun(command: string, element: string, value: string)
---@param command string The command to execute.
---@param element string The element to set.
---@param value string The value to set the element to.
---.
--- ### Example
---
---```
---⠀⠀-- turns humanizer off.
---constellation.cmd( "set", "humanizer", "false" )
---```
constellation.cmd = function()end



---This function will turn on/off the Hello Kitty cursor.
---
---@type fun(boolean: boolean)
---@param boolean boolean Whether to turn on or off the Hello Kitty cursor.
---.
--- ### Example
---
---```
---⠀⠀-- turns off Hello Kitty cursor.
---constellation.cursor( false )
---```
constellation.cursor = function()end



---This function will sleep Constellation for a certain amount of milliseconds.
---
---@type fun(milliseconds: number)
---@param milliseconds number The amount of milliseconds to sleep for.
---.
--- ### Example
---
---```
---⠀⠀-- sleep for 1 second
---constellation.sleep( 1000 )
---```
constellation.sleep = function()end



---This gets your license key. This can be used for the Web API.
---
---@type fun(): string
---@return string Your license key
---.
--- ### Example
---
---```
---local my_key = constellation.license()
---```
constellation.license = function()end



---This will set the game window that Constellation will look for. This wraps the function FindWindowA.
---
---@type fun(window_name: string, string: string)
---@param window_name string The name of the window to set.
---@param string string idk lul.
---.
--- ### Example
---
---```
---local window_test = {}
---
---function window_test.OnConstellationSearchWindow( game_id, window )
---
---⠀⠀if not window then
---⠀⠀⠀⠀constellation.log("Constellation has cannot find or has lost the game window.")
---
---⠀⠀⠀⠀if game_id == GAME_CSGO then
---⠀⠀⠀⠀⠀⠀constellation.set_window( "Valve001", "" )
---⠀⠀⠀⠀end
---
---⠀⠀⠀⠀local window_address = constellation.get_window()
---
---⠀⠀⠀⠀if not window_address then
---⠀⠀⠀⠀⠀⠀constellation.log("Constellation still couldn't find the game window.")
---⠀⠀⠀⠀end
---⠀⠀end
---
---end
---
---return window_test
---```
constellation.set_window = function()end



---This gets the window Constellation is looking for with the specific game.
---
---@type fun(): number
---@return number
---.
--- ### Example
---
---```
---local window_test = {}
---
---function window_test.OnConstellationSearchWindow( game_id, window )
---
---⠀⠀if not window then
---⠀⠀⠀⠀constellation.log("Constellation has cannot find or has lost the game window.")
---
---⠀⠀if game_id == GAME_CSGO then
---⠀⠀⠀⠀constellation.set_window( "Valve001", "" )
---⠀⠀end
---
---⠀⠀local window_address = constellation.get_window()
---
---⠀⠀if not window_address then
---⠀⠀⠀⠀constellation.log("Constellation still couldn't find the game window.")
---⠀⠀⠀⠀end
---⠀⠀end
---
---end
---
---return window_test
---```
constellation.get_window = function()end



---This will enable/disable hypermode.
---
---@type fun(boolean: boolean)
---@param boolean Whether to enable or disable hypermode.
---.
--- ### Example
---
---```
---constellation.hypermode( true )
---```
constellation.hypermode = function() end
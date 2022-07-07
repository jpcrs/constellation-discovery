---These callbacks are only triggered through the Lua module. The Web SDK does not have callbacks. Callbacks in Constellation are designed to help developers modify the behavior of Constellation at the right moment.
---@type callbacks
callbacks = {}

---This callback is triggered when a script loads for the first time. Remember that scripts in constellation\scripts\core load BEFORE scripts in constellation\scripts. This callback is always going to be invoked on a script that Constellation reads for the first time. The game_id parameter will always be GAME_NONE if the script is located in the core folder.
---
---@type fun(game_id: number)
---.
--- ### Example
---
---```
---
---```
callbacks.Initialize = function()end

---This callback is triggered when Constellation thinks. Every moment Constellation is running, this callback is triggered. localplayer will always return nil if there isn't a calibrated game. This callback is your go-to callback for running code.
---
---@type fun(localplayer: number, localweapon: number, viewangles: {x: number, y: number, z: number})
---@param localplayer number The localplayer address.
---@param localweapon number The localplayer weapon address.
---@param viewangles {x: number, y: number, z: number} The localplayer view angles.
---.
--- ### Example
---
---```
---
---```
callbacks.OnConstellationTick = function()end


---This callback is triggered when Constelia shows a pop-up message. See the globals page for event ids.
---Returning false will cause Constelia to stop displaying the pop-up message.
---
---@type fun(event_id: number, message: string): boolean
---@param event_id number The event id. (See globals)
---@param message string The message.
---@return boolean
---.
--- ### Example
---
---```
---
---```
callbacks.OnConsteliaNotification = function()end


---This callback is triggered when Constelia speaks (sound).
---Returning false will cause Constelia to stop displaying the pop-up message.
---
---@type fun(): boolean
---.
--- ### Example
---
---```
---
---```
callbacks.OnConsteliaSpeak = function()end


---This callback is triggered when the humanizer finds a target.
---Returning false on this callback will stop the humanizer from proceeding on a target. Rather, this will reset the humanizer back to neutral.
---
---@type fun(localplayer: number, localweapon: number, enemy: number, bone: number, fov: number): boolean
---@param localplayer number The localplayer address.
---@param localweapon number The localplayer weapon.
---@param enemy number The enemy address.
---@param bone number The bone address.
---@param fov number The fov.
---.
--- ### Example
---
---```
---
---```
callbacks.OnHumanizerTarget = function()end


---This callback is triggered when Constellation does a visibility check.
---Returning false on this callback will make Constellation believe the enemy is not visible.
---Returning true on this callback will make Constellation believe the enemy is visible.
---
---@type fun(player: number, target: number, original_result: number): boolean
---@param player number The player address.
---@param target number The target address.
---@param original_result number The original result.
---.
--- ### Example
---
---```
---
---```
callbacks.OnVisibilityCheck = function()end


---This callback is triggered when the overlayed window is active. This callback can only be triggered if a script created an overlay. You can only call constellation.windows.overlay.- related functions inside of this callback.
---
---@type fun(width: number, height: number, center_of_screen_x: number, center_of_screen_y: number)
---@param width number The width of the overlay.
---@param height number The height of the overlay.
---@param center_of_screen_x number The center of the screen x.
---@param center_of_screen_y number The center of the screen y.
---.
--- ### Example
---
---```
---
---```
callbacks.OnOverlayRender = function()end

---This callback is triggered when the standard triggerbot is going to shoot.
---Returning false on this callback will stop the triggerbot from shooting.
---
---@type fun(localplayer: number, localweapon: number, enemy: number, friendly_fire_status: bool, sleep_time: number): boolean
---@param localplayer number The localplayer address.
---@param localweapon number The localplayer weapon.
---@param enemy number The enemy address.
---@param friendly_fire_status bool The friendly fire status.
---@param sleep_time number The triggerbot sleep time.
---.
--- ### Example
---
---```
---
---```
callbacks.OnStandardTriggerbotActivated = function()end


---This callback is triggered when the humanizer triggerbot is going to shoot.
---Returning false on this callback will stop the triggerbot from shooting.
---
---@type fun(localplayer: number, localweapon: number, enemy: number, sensitivity: number): boolean
---@param localplayer number The localplayer address.
---@param localweapon number The localplayer weapon.
---@param enemy number The enemy address.
---@param sensitivity number The sensitivity.
---.
--- ### Example
---
---```
---
---```
callbacks.OnHumanizerTriggerbotActivated = function()end


---This callback is triggered when the sound ESP is about to play. See globals for left_right_middle.
---Returning false on this callback will stop the sound ESP from playing.
---
---@type fun(localplayer: number, localweapon: number, sound_file: string, left_right_middle: number, target: number): boolean
---.
--- ### Example
---
---```
---
---```
callbacks.OnSoundESP = function()end


---This callback is triggered when a fantasy.cmd command is excuted.
---
---@type fun(command: string, element: string, value: string)
---@param command string The command.
---@param element string The element.
---@param value string The value.
---.
--- ### Example
---
---```
---
---```
callbacks.OnFantasyCMD = function()end


---This callback is triggered when a Constellation is calibrated to a supported game. See globals for game_id.
---
---@type fun(game_id: number)
---@param game_id number The game id. (See globals)
---.
--- ### Example
---
---```
---
---```
callbacks.OnConstellationCalibrated = function()end


---This callback is triggered when a Constellation updates the constellation folder with the latest content.
---
---@type fun()
---.
--- ### Example
---
---```
---
---```
callbacks.OnConstellationUpdate = function()end


---Whenever Constellation looks for the game window, this callback is triggered.
---
---@type fun(game_window: number, window: number)
---.
--- ### Example
---
---```
---
---```
callbacks.OnConstellationSearchWindow = function()end


---Whenever Constellation loses a game window, this callback is triggered.
---
---@type fun()
---.
--- ### Example
---
---```
---
---```
callbacks.OnConstellationLoseGame = function()end

---Whenever an option in the Web GUI is changed, this callback is triggered. Pre-calibration settings are not accounted for.
---
---@type fun(fantasyvar: number, new_value: number)
---@param fantasyvar number The fantasyvar.
---@param new_value number The new value.
---.
--- ### Example
---
---```
---
---```
callbacks.OnWebGUISettingChanged = function()end
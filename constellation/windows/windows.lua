---These function(s) perform general WinAPI related actions.
---@type windows
windows = {
    ---@type capture
    capture = nil,
    ---@type file
    file = nil,
    ---@type keyboard
    keyboard = nil,
    ---@type mouse
    mouse = nil,
    ---@type registry
    registry = nil,
    ---@type overlay
    overlay = nil
}


---This will check if a window is active or not. This is simply FindWindow and GetForegroundWindow in WinAPI.
---
---@type fun(window_class: string, window_name: string): boolean
---@param window_class string The window class to check.
---@param window_name string The window name to check.
---@return boolean True if the window is active, false if not.
---.
--- ### Example
---
---```
---if constellation.windows.is_window_active( "Valve001", "" ) then
---    constellation.log( "Your current game window is CS:GO/TF2/CSS." )
---end
---if constellation.windows.is_window_active( "", "Spotify Premium" ) then
---    constellation.log( "You're looking at Spotify right now." )
---end
---```
windows.is_windows_active = function()end


---This will check if a window exists or not. This is simply FindWindow in WinAPI.
---
---@type fun(window_class: string, window_name: string): boolean
---@param window_class string The window class to check.
---@param window_name string The window name to check.
---@return boolean True if the window exists, false if not.
---.
--- ### Example
---
---```
---if constellation.windows.find_window( "Valve001", "" ) then
---    constellation.log( "CS:GO/TF2/CSS is open right now." )
---end
---```
windows.find_window = function()end


---This will play a sound from your computer. This is simply PlaySound in WinAPI.
---
---@type fun(sound: string, async: boolean)
---@param sound string The sound to play.
---@param async boolean Whether or not to play the sound asynchronously.
---.
--- ### Example
---
---```
---constellation.windows.play_sound( constellation.vars.get( "directory" ) .. "constellation\\sound.wav", true )
---```
windows.play_sound = function()end


---This will check if a key is pressed on your keyboard. The parameter requires a virtual key number. See https://cherrytree.at/misc/vk.htm. Take a look at the documentation for lib_key. This helps translate key information or simplifies this in a more detailed usage. https://fantasy.cat/forums/index.php?threads/lib_key.5584/
---
---@type fun(key: number): boolean
---@param key number The key to check.
---@return boolean True if the key is pressed, false if not.
---.
--- ### Example
---
---```
---if constellation.windows.key( 36 ) then
---    constellation.log("You're pressing your [HOME] key!")
---end
---```
windows.key = function()end


---This will convert a virtual key value to its symbolic constant name. See https://cherrytree.at/misc/vk.htm.
---
---@type fun(key: number): string
---@param key number The key to convert.
---@return string The symbolic constant name.
---.
--- ### Example
---
---```
---local alt_key_name = constellation.windows.get_vk_name( 18 )
---```
windows.get_vk_name = function()end


---This will convert a virtual key constant name to its value. See https://cherrytree.at/misc/vk.htm.
---
---@type fun(key: string): number
---@param key string The key to convert.
---@return number The virtual key value.
---.
--- ### Example
---
---```
---local alt_key_value = constellation.windows.get_vk_name( "VK_MENU" )
---```
windows.get_vk_value = function()end


---Wrapper for WinAPI MessageBoxA. Only button type and result globals for uType are registered in the Lua module. Use bit.bor and see WinAPI MessageBoxA to display an icon.
---
---@type fun(title: string, message: string, button_type: number): number
---@param title string The title of the message box.
---@param message string The message to display.
---@param button_type number The button type to display.
---@return number The result of the message box.
---.
--- ### Example
---
---```
---local result = constellation.windows.popup( "Hello World", "fantasy.cat", MB_YESNOCANCEL )
---
---if result == IDYES then
---     print("Yes button pressed.")
---elseif result == IDNO then
---     print("No button pressed.")
---elseif result == YESCANCEL then
---     print("Cancel button pressed.")
---end
---```
windows.popup = function()end


---Extracts a .zip file to a directory. Both parameters start at the same directory as Constellation. The extracted .zip will always leave an extracted folder with the same name as the .zip. Meaning, if you extract a folder name hello_world.zip, it will create a folder in the target directory called hello_world. Constellation logs every file extracted from the .zip folder. This function will also display error messages if the extraction fails.
---
---@type fun(zip_file: string, target_directory: string): boolean
---@param zip_file string The .zip file to extract.
---@param target_directory string The target directory to extract the .zip to.
---@return boolean True if the extraction was successful, false if not.
---.
--- ### Example
---
---```
---if not constellation.windows.zip( "hello_world.zip", "constellation" ) then
---    constellation.log("Extraction failed.")
---end
---```
windows.zip = function()end


---This will open a GUI and play an a video file. This function only returns true if the video is finished playing. This function will hang Constellation until the video is done playing.
---
---@type fun(video_name: string, video_path: string): boolean
---@param video_name string The name of the video.
---@param video_path string The path to the video.
---@return boolean True if the video is finished playing, false if not.
---.
--- ### Example
---
---```
---constellation.windows.play_video( "My video", "C:\\MyVideo.mp4" )
---```
windows.play_video = function()end


---Flashes the current active window.
---
---@type fun(flash: boolean)
---@param flash boolean Whether or not to flash the window.
---.
--- ### Example
---
---```
---this will keep the game window flashing until it's focused or until you set this false.
---constellation.windows.flash( true )
---```
windows.flash = function()end
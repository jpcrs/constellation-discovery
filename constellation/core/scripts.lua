---These function(s) perform script changes to Constellation.
---@class scripts
local scripts = {}



---Reloads all scripts. The game window must be active. If you are using lib_overlay, the overlay must be rendering for this function to be called.
---
---@type fun()
--- ### Example
---See linker.lua
scripts.reload = function()end



---Checks if a script is loaded.
---
---
--- ### Example
---
---```
---if constellation.scripts.is_loaded( "console.lua" ) then
---⠀⠀print("Console debug mode is loaded.")
---end
---```
---@param script_name string The name of the script.
---@return boolean True if the script is loaded, false otherwise.
---@type fun(script_name: string): boolean
scripts.is_loaded = function(script_name)end



---This is a wrapper for the toggleScriptStatus Web API method.
---
---
--- ### Example
---
---```
---constellation.scripts.toggle( "console.lua" )
---```
---@param script_name string The name of the script.
---@return string The status of the script.
---@type fun(script_name: string): string
scripts.toggle = function(script_name)end



---This will download a Lua library file from a URL and place it automatically in your constellation\scripts\lib folder. If this directory does not exist, this function will automatically create it.
---
---
--- ### Example
---
---```
---⠀-- https://github.com/rxi/json.lua
---constellation.scripts.install_module( "json.lua", "https://raw.githubusercontent.com/rxi/json.lua/master/json.lua")
---```
---@param name string The name of the library.
---@param url string The URL of the library file.
---@type fun(name: string, url: string)
scripts.install_module = function(name, url)end
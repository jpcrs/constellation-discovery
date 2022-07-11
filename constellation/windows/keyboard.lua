---These function(s) simulate usermode keyboard input. The first parameter accepts a virtual key. See Virtual-Key Codes
---@class keyboard
local keyboard = {}


---This holds down a key.
---
--- ### Example
---
---```
---.-- holding down [SHIFT] key
---constellation.windows.keyboard.down( 16 )
---```
---@param key number The virtual key to hold down.
---@type fun(key: number)
keyboard.down = function(key)end


---This releases a key that is held down.
---
--- ### Example
---
---```
---.-- release [SHIFT] key
---constellation.windows.keyboard.up( 16 )
---```
---@param key number The virtual key to release.
---@type fun(key: number)
keyboard.up = function(key)end


---This presses a key down for a certain amount of milliseconds and then releases it.
---
--- ### Example
---
---```
---.-- press [SHIFT] key for 50 milliseconds.
---constellation.windows.keyboard.press( 16, 50 )
---```
---@param key number The virtual key to press down.
---@param milliseconds number The amount of milliseconds to hold down the key.
---@type fun(key: number, milliseconds: number)
keyboard.press = function(key, milliseconds)end
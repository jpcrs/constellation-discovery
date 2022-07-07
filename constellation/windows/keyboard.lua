---These function(s) simulate usermode keyboard input. The first parameter accepts a virtual key. See Virtual-Key Codes
---@type keyboard
keyboard = {}


---This holds down a key.
---
---@type fun(key: number)
---@param key number The virtual key to hold down.
---.
--- ### Example
---
---```
---.-- holding down [SHIFT] key
---constellation.windows.keyboard.down( 16 )
---```
keyboard.down = function()end


---This releases a key that is held down.
---
---@type fun(key: number)
---@param key number The virtual key to release.
---.
--- ### Example
---
---```
---.-- release [SHIFT] key
---constellation.windows.keyboard.up( 16 )
---```
keyboard.up = function()end


---This presses a key down for a certain amount of milliseconds and then releases it.
---
---@type fun(key: number, milliseconds: number)
---@param key number The virtual key to press down.
---@param milliseconds number The amount of milliseconds to hold down the key.
---.
--- ### Example
---
---```
---.-- press [SHIFT] key for 50 milliseconds.
---constellation.windows.keyboard.press( 16, 50 )
---```
keyboard.press = function()end
---These function(s) perform basic cursor related actions from the Windows API. See constellation.driver Kernel Mouse Simulation to actually move your cursor and control your mouse behavior. Unlike Parallatic, there is no usermode mouse simulation. Constellation only contains kernel simulation. Kernel mouse simulation can only be found in constellation.driver functions. These functions are throwaway functions that might be useful, but don't simulate mouse behavior.
---@class mouse
local mouse = {}


---Gets your cursor position.
---
--- ### Example
---
---```
---local x, y = constellation.windows.mouse.position( )
---```
---@return {x: number, y: number} The cursor position.
---@type fun(): {x: number, y: number}
mouse.position = function()end


---This will show/hide your cursor.
---
--- ### Example
---
---```
---constellation.windows.mouse.show( true )
---```
---@param show boolean Whether to show or hide your cursor.
---@type fun(show: boolean)
mouse.show = function(show)end
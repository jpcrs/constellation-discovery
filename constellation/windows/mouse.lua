---These function(s) perform basic cursor related actions from the Windows API. See constellation.driver Kernel Mouse Simulation to actually move your cursor and control your mouse behavior. Unlike Parallatic, there is no usermode mouse simulation. Constellation only contains kernel simulation. Kernel mouse simulation can only be found in constellation.driver functions. These functions are throwaway functions that might be useful, but don't simulate mouse behavior.
---@type mouse
mouse = {}


---Gets your cursor position.
---
---@type fun(): {x: number, y: number}
---@return {x: number, y: number} The cursor position.
---.
--- ### Example
---
---```
---local x, y = constellation.windows.mouse.position( )
---```
mouse.position = function()end


---This will show/hide your cursor.
---
---@type fun(show: boolean)
---@param show boolean Whether to show or hide your cursor.
---.
--- ### Example
---
---```
---constellation.windows.mouse.show( true )
---```
mouse.show = function()end
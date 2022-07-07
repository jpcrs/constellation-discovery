---These function(s) allow you to manage the overlay feature in Constellation.
---@type overlay
overlay = {
    ---@type imgui
    imgui = nil
}

---This will create a transparent window over ANY window/game. This will allow you to draw visuals on top of that game. Below is an example of me doing such to CS:GO, Spotify and Elder Scrolls Online:
---
---@type fun(window_class: string, window_name: string): boolean
---@param window_class string The class of the window you want to draw on.
---@param window_name string The name of the window you want to draw on.
---@return boolean Whether or not the window was created successfully.
---.
--- ### Example
---
---```
---local overlay = require "overlay" -- create overlay library instance
---function overlay_test.Initialize( game_id )
---    if game_id == GAME_NONE then
---        constellation.windows.overlay.create( "", "Spotify Premium" ) -- We didn't calibrate or we're doing a custom game. So just draw on something random for this example.
---    elseif game_id == GAME_DOTA2 then
---        constellation.windows.overlay.create( "", "Dota 2" ) -- We're calibrated for Dota 2.
---    else
---        constellation.windows.overlay.create( "Valve001", "" ) -- We're calibrated for CS:GO/TF2/CSS
---    end
---end
---```
overlay.create = function()end


---This will add fonts to the overlay. See globals about usage of weight and stretch. This is NOT the same as constellation.windows.overlay.imgui.add_font. Using an added font from this function or vice versa will not display the correct font. These are stored separately.
---
---@type fun(nickname: string, font_name: string, size: number, weight: number, stretch: number)
---@param nickname string The nickname of the font.
---@param font_name string The name of the font.
---@param size number The size of the font.
---@param weight number The weight of the font.
---@param stretch number The stretch of the font.
---.
--- ### Example
---
---```
---function overlay_test.Initialize( game_id )
---    if game_id == GAME_NONE then
---        constellation.windows.overlay.create( "", "Spotify Premium" ) -- We didn't calibrate or we're doing a custom game. So just draw on something random for this example.
---    elseif game_id == GAME_DOTA2 then
---        constellation.windows.overlay.create( "", "Dota 2" ) -- We're calibrated for Dota 2.
---    else
---        constellation.windows.overlay.create( "Valve001", "" ) -- We're calibrated for CS:GO/TF2/CSS
---    end
---
---    constellation.windows.overlay.add_font( 
---        "Consolas Large",           -- nickname or codename of the font.
---        "Consolas",                 -- the actual font name in your system.
---        25,                         -- size
---        DWRITE_FONT_WEIGHT_REGULAR,
---        DWRITE_FONT_STRETCH_NORMAL
---    )
---
---    constellation.windows.overlay.add_font( 
---        "Consolas Medium",
---        "Consolas",
---        16,
---        DWRITE_FONT_WEIGHT_REGULAR,
---        DWRITE_FONT_STRETCH_NORMAL
---    )
---
---    constellation.windows.overlay.add_font( 
---        "Consolas Small",
---        "Consolas",
---        12,
---        DWRITE_FONT_WEIGHT_REGULAR,
---        DWRITE_FONT_STRETCH_NORMAL
---    )
---
---    return true
---end
---```
overlay.add_font = function()end


---Draws text on the screen. See globals for format related information.
---
---@type fun(text: string, nickname: string, x: number, y: number, rgba: {r: number, g: number, b: number, a: number}, format: number)
---@param text string The text to draw.
---@param nickname string The nickname of the font to use.
---@param x number The x position of the text.
---@param y number The y position of the text.
---@param rgba {r: number, g: number, b: number, a: number} The color of the text.
---@param format number The format of the text. (Optional)
---.
--- ### Example
---
---```
---constellation.windows.overlay.text( "Hey!", "Consolas Large", 130, 130, { r = 255, g = 255, b = 255, a = 255 } )
---constellation.windows.overlay.text( "Hello World", "Consolas Large", 330, 130, { r = 255, g = 0, b = 0, a = 255 }, TEXT_ALIGN_HORIZTONAL_CENTER )
---```
overlay.text = function()end


---Draws box on the screen.
---
---@type fun(x: number, y: number, width: number, height: number, thickness: number, rgba: {r: number, g: number, b: number, a: number})
---@param x number The x position of the box.
---@param y number The y position of the box.
---@param width number The width of the box.
---@param height number The height of the box.
---@param thickness number The thickness of the box.
---@param rgba {r: number, g: number, b: number, a: number} The color of the box.
---.
--- ### Example
---
---```
---constellation.windows.overlay.box( 0, 0, 128, 128, 2, { r = 255, g = 0, b = 0, a = 255 })
---```
overlay.box = function()end


---Draws line on the screen.
---
---@type fun(x: number, y: number, dx: number, dy: number, rgba: {r: number, g: number, b: number, a: number}, thickness: number)
---@param x number The x position of the line.
---@param y number The y position of the line.
---@param dx number The x delta of the line.
---@param dy number The y delta of the line.
---@param rgba {r: number, g: number, b: number, a: number} The color of the line.
---@param thickness number The thickness of the line.
---.
--- ### Example
---
---```
---constellation.windows.overlay.line( center_x, center_y, 0, center_y, { r = 0, g = 255, b = 255, a = 255 }, 5 )
---```
overlay.line = function()end


---Draws a filled box on the screen.
---
---@type fun(x: number, y: number, width: number, height: number, rgba: {r: number, g: number, b: number, a: number})
---@param x number The x position of the box.
---@param y number The y position of the box.
---@param width number The width of the box.
---@param height number The height of the box.
---@param rgba {r: number, g: number, b: number, a: number} The color of the box.
---.
--- ### Example
---
---```
---constellation.windows.overlay.box_filled( 0, 150, 128, 128, { r = 0, g = 255, b = 0, a = 255 })
---```
overlay.box_filled = function()end


---Draws a filled box on the screen, except outlined with a different color.
---
---@type fun(x: number, y: number, width: number, height: number, thickness: number, rgba: {r: number, g: number, b: number, a: number}, outline_rgba: {r: number, g: number, b: number, a: number})
---@param x number The x position of the box.
---@param y number The y position of the box.
---@param width number The width of the box.
---@param height number The height of the box.
---@param thickness number The thickness of the box.
---@param rgba {r: number, g: number, b: number, a: number} The color of the box.
---@param outline_rgba {r: number, g: number, b: number, a: number} The color of the outline.
---.
--- ### Example
---
---```
---constellation.windows.overlay.box_filled_outlined( 0, 150, 128, 128, 2, { r = 0, g = 255, b = 0, a = 255 }, { r = 255, g = 0, b = 0, a = 255 })
---```
overlay.box_filled_outline = function()end


---Draws circle on the screen.
---
---@type fun(x: number, y: number, radius: number, segments: number, rgba: {r: number, g: number, b: number, a: number})
---@param x number The x position of the circle.
---@param y number The y position of the circle.
---@param radius number The radius of the circle.
---@param segments number The number of segments to use to draw the circle.
---@param rgba {r: number, g: number, b: number, a: number} The color of the circle.
---.
--- ### Example
---
---```
---constellation.windows.overlay.circle( center_x, center_y - 300, 60, 120, { r = 0, g = 0, b = 255, a = 255 })
---```
overlay.circle = function()end


---Draws a bezier curve.
---
---@type fun(x1: number, y1: number, x2: number, y2: number, x3: number, y3: number, x4: number, y4: number, rgba: {r: number, g: number, b: number, a: number}, thickness: number)
---@param x1 number The x position of the first control point.
---@param y1 number The y position of the first control point.
---@param x2 number The x position of the second control point.
---@param y2 number The y position of the second control point.
---@param x3 number The x position of the third control point.
---@param y3 number The y position of the third control point.
---@param x4 number The x position of the fourth control point.
---@param y4 number The y position of the fourth control point.
---@param rgba {r: number, g: number, b: number, a: number} The color of the curve.
---@param thickness number The thickness of the curve.
---.
--- ### Example
---
---```
---constellation.windows.overlay.bezier_cubic( 50, 100, 100, 50, 150, 100, 200, 150, { r = 0, g = 0, b = 255, a = 255 }, 2)
---```
overlay.bezier_cubic = function()end


---Draws a triangle (filled).
---
---@type fun(x1: number, y1: number, x2: number, y2: number, x3: number, y3: number, rgba: {r: number, g: number, b: number, a: number})
---@param x1 number The x position of the first point.
---@param y1 number The y position of the first point.
---@param x2 number The x position of the second point.
---@param y2 number The y position of the second point.
---@param x3 number The x position of the third point.
---@param y3 number The y position of the third point.
---@param rgba {r: number, g: number, b: number, a: number} The color of the triangle.
---.
--- ### Example
---
---```
---constellation.windows.overlay.triangle_filled( 50, 100, 100, 50, 150, 100, { r = 0, g = 0, b = 255, a = 255 })
---```
overlay.triangle_filled = function()end


---Draws a triangle.
---
---@type fun(x1: number, y1: number, x2: number, y2: number, x3: number, y3: number, thickness: number, rgba: {r: number, g: number, b: number, a: number})
---@param x1 number The x position of the first point.
---@param y1 number The y position of the first point.
---@param x2 number The x position of the second point.
---@param y2 number The y position of the second point.
---@param x3 number The x position of the third point.
---@param y3 number The y position of the third point.
---@param thickness number The thickness of the triangle.
---.
--- ### Example
---
---```
---constellation.windows.overlay.triangle( 50, 100, 100, 50, 150, 100, { r = 0, g = 0, b = 255, a = 255 }, 2)
---```
overlay.triangle = function()end


---Adds an image to Constellation's memory space. This function should only be called in Initialize as constantly adding an image to memory otherwise will brick your system. The image must be located in constellation\resources.
---
---@type fun(file: string): number
---@param file string The file name of the image.
---@param return number The ID of the image.
---.
--- ### Example
---
---```
---local test_image = nil
---
---function test.Initialize()
---    test_image = constellation.windows.overlay.add_image( "birdy.jpg" )
---end
---
---function test.OnOverlayRender()
---    constellation.windows.overlay.image( test_image, 256, 256 )
---end
---```
overlay.add_image = function()end


---Displays an image in the background. This is different from constellation.windows.overlay.imgui.image as this function does not require an ImGui window to be rendered.
---
---@type fun(image_id: number, left: number, top: number, right: number, bottom: number)
---@param image_id number The ID of the image.
---@param left number The left position of the image.
---@param top number The top position of the image.
---@param right number The right position of the image.
---@param bottom number The bottom position of the image.
---.
--- ### Example
---
---```
---local test_image = nil
---
---function test.Initialize()
---    test_image = constellation.windows.overlay.add_image( "birdy.jpg" )
---end
---
---function test.OnOverlayRender()
---    constellation.windows.overlay.image( test_image, 256, 256, 512, 512 )
---end
---```
overlay.image = function()end


---This will toggle on/off all overlay visuals regardless of script settings. This function does NOT stop any drawing functions from being called. However, it simply hides the overlay window in which displays the content.
---
---@type fun(toggle: boolean)
---@param toggle boolean Toggle on/off the overlay.
---.
--- ### Example
---
---```
---constellation.windows.overlay.toggle( false )
---```
overlay.toggle = function()end


---This will check the toggled status of the overlay window. This can be turned on/off with the function constellation.windows.overlay.toggle. This value will always be true by default because Constellation will always display overlay visuals naturally. The only way this can be false is if it is set false.
---
---@type fun(): boolean
---@return boolean The toggled status of the overlay.
---.
--- ### Example
---
---```
---if not constellation.windows.overlay.toggled( ) then
---    print("visual display is off")
---end
---```
overlay.toggled = function()end


---If you are using a script or developing a script that uses constellation.windows.overlay.imgui.inputtext or constellation.windows.overlay.imgui.textarea, this function is used to allow those functions to accept your keyboard input. There is a script for this already called keyboard_hook.lua. This feature is disabled by default.
---
---@type fun(toggle: boolean)
---@param toggle boolean Toggle on/off the keyboard hook.
---.
--- ### Example
---
---```
---constellation.windows.overlay.toggle_keyboard_hook( true )
---```
overlay.toggle_keyboard_hook = function()end


---This creates a pie/roulette picker. If no option is selected, the returning value is -1.
---
---@type fun(options: string): number
---@param options string The options to be displayed, separated by "|".
---@return number The index of the selected option.
---.
--- ### Example
---
---```
---local result = constellation.windows.overlay.pie("Option1|Option2|Option3|Option4|Option5|Option6")
---```
overlay.pie = function()end


---The pie/roulette picker does not reset the selected option automatically. This is due to style purposes. Use this function to reset it back to -1.
---
---@type fun()
---.
--- ### Example
---
---```
---constellation.windows.overlay.reset_pie()
---```
overlay.reset_pie = function()end


---This will show a notification on the bottom right of your overlay window. Notifications automatically stack on top of one another and fade away on their own time independently.
---
---@type fun(text: string, duration_milliseconds: number)
---@param text string The text of the notification.
---@param duration_milliseconds number The duration of the notification in milliseconds.
---.
--- ### Example
---
---```
---constellation.windows.overlay.notification( "My test notification is now appearing on the bottom right of my screen.", 10000 ) -- 10 seconds
---constellation.windows.overlay.notification( "Here is my 2nd notification...", 5000 ) -- 5 seconds
---constellation.windows.overlay.notification( "And my 3rd :)", 10000 )
---```
overlay.notification = function()end
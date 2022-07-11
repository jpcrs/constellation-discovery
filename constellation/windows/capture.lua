---These function are for image manipulation and capturing pixels on a target window or desktop. The ideal usage for this is to find images within other images, take screenshots, botting, pixel aimbot creation and other automated transactions.
---
---See the guide thread "Image Manipulation (constellation.windows.capture)" for a detailed breakdown and further example usage of these functions.
---@class capture
local capture = {

}


---This screenshots/captures a window.
---
--- ### Example
---
---```
---constellation.windows.capture.window( "", "Counter-Strike: Global Offensive - Direct3D 9" )
---```
---@param string string idk
---@param window_name string of the window to capture.
---@return boolean True if the window was found and captured, false if not.
---@type fun(string: string, window_name: string): boolean
capture.window = function(string, window_name)end


---This screenshots/captures your desktop. This will capture ALL monitors connected to your system as well.
---
--- ### Example
---
---```
---constellation.windows.capture.desktop( )
---```
---@return boolean True if the desktop was captured, false if not.
---@type fun(): boolean
capture.desktop = function()end


---This will get the RGB of a specific area of your last capture.
---
--- ### Example
---
---```
---constellation.windows.capture.desktop( )
---local r, g, b = constellation.windows.capture.get_rgb( 10, 10 ) -- What color is the pixel on my desktop at location 10, 10?
---```
---@param x number coordinate.
---@param y number coordinate.
---@return number, number, number The red, green, and blue values of the pixel.
---@type fun(x: number, y: number) : number, number, number
capture.get_rgb = function(x, y)end


---This will save your last capture to a file.
---
--- ### Example
---
---```
---constellation.windows.capture.desktop( )
---constellation.windows.capture.save( "my_desktop.png" )
---```
---@param file_name string Name of the file to save the capture to.
---@type fun(file_name: string)
capture.save = function(file_name)end


---This will get the width and height of your last capture.
---
--- ### Example
---
---```
---constellation.windows.capture.window( "", "Team Fortress 2" )
---local width, height = constellation.windows.capture.dimensions( ) -- Size of your TF2 window and screenshot.
---```
---@return number, number The width and height of the capture.
---@type fun(): number, number
capture.dimensions = function()end


---This will change the focus region of your last capture. Instead of scanning through a whole image, you can scan a small area within the image.
---
--- ### Example
---
---```
---constellation.windows.capture.desktop(  )
---constellation.windows.capture.region( 0, 0, 256, 256 )
---constellation.windows.capture.save( "my_desktop_region.png" )
---```
---@param x number coordinate.
---@param y number coordinate.
---@param width number Width of the region.
---@param height number Height of the region.
---@type fun(x: number, y: number, width: number, height: number)
capture.region = function(x, y, width, height)end


---This will set your capture to an image file.
---
--- ### Example
---
---```
---constellation.windows.capture.image( "my_picture.png" )
---```
---@param file_name string Name of the file to set the capture to.
---@type fun(file_name: string)
capture.image = function(file_name)end


---This will grayscale your last capture.
---
--- ### Example
---
---```
----- load my image
---constellation.windows.capture.image( "my_picture.png" )
---constellation.windows.capture.grayscale()
---constellation.windows.capture.image( "my_picture_grayscaled.png" )
---```
---@type fun()
capture.grayscale = function()end


---This will compare your current capture to a stored capture.
---
--- ### Example
---
---```
----- load pikachu picture.
---constellation.windows.capture.image( "pikachu.png" )
---local image_pikachu = constellation.windows.capture.store()
---constellation.windows.capture.desktop( )
---local pixels_in_common, percentage_difference = constellation.windows.capture.compare( image_pikachu )
---```
---@param image number The image stored to compare to
---@return number, number The percentage of similarity between the two images.
---@type fun(image: number): number, number
capture.compare = function(image)end


---This will compare two images.
---
--- ### Example
---
---```
---local pixels_in_common, percentage_difference = constellation.windows.capture.image( "my_picture.png", "my_second_picture.jpg" )
---```
---@param image1 number The first image to compare.
---@param image2 number The second image to compare.
---@return number, number The percentage of similarity between the two images.
---@type fun(image1: number, image2: number): number, number
capture.compare_images = function(image1, image2)end


---This will compare your last capture to an image file.
---
--- ### Example
---
---```
---constellation.windows.capture.desktop(  )
---local pixels_in_common, percentage_difference = constellation.windows.capture.compare_to_image( "my_second_picture.jpg" )
---```
---@param image string The image file to compare to.
---@return number, number The percentage of similarity between the two images.
---@type fun(image: string): number, number
capture.compare_to_image = function(image)end


---This will store your current capture to Constelia's memory bank. This will raise the RAM usage of Constellation. This function is very useful for comparing images that aren't changing. It is a slow process to capture/screenshot windows, images and files. This function is designed to counter that.
---
--- ### Example
---
---```
----- load pikachu picture.
---constellation.windows.capture.image( "pikachu.png" )
---local image_pikachu = constellation.windows.capture.store()
---constellation.windows.capture.desktop( )
---local x, y, x2, y2 = constellation.windows.capture.find( image_pikachu )
---if x == 0 and y == 0 and x2 == 0 and y2 == 0 then
---    constellation.log("Pikachu cannot be found :(" )
---end
---```
---@return number The image stored in Constelia memory bank.
---@type fun(): number
capture.store = function()end


---This will compare two captures.
---
--- ### Example
---
---```
---constellation.windows.capture.image( "pikachu.png" )
---local image_pikachu = constellation.windows.capture.store()
---constellation.windows.capture.desktop( )
---constellation.windows.capture.image( "pikachu2.png" )
---local image_pikachu2 = constellation.windows.capture.store()
---local pixels_in_common, percentage_difference = constellation.windows.capture.compare_captures( image_pikachu, image_pikachu2 )
---```
---@param capture1 number The first capture to compare.
---@param capture2 number The second capture to compare.
---@return number, number The percentage of similarity between the two images.
---@type fun(capture1: number, capture2: number): number, number
capture.compare_captures = function(capture1, capture2)end


---This will display your current capture in a GUI. This is good for debugging.
---
--- ### Example
---
---```
---constellation.windows.capture.desktop( )
---constellation.windows.capture.display( "My Desktop" )
---```
---@param display_name string The name of the display.
---@type fun(display_name: string)
capture.display = function(display_name)end


---This will close the display you have created.
---
--- ### Example
---
---```
---constellation.windows.capture.close_display( "My Desktop" )
---```
---@param display_name string The name of the display.
---@type fun(display_name: string)
capture.close_display = function(display_name)end


---This will clear all stored captures and will clear your current capture.
---
--- ### Example
---
---```
---constellation.windows.capture.clear( )
---```
---@type fun()
capture.clear = function()end


---This will resize your current capture.
---
--- ### Example
---
---```
---constellation.windows.capture.desktop( )
---constellation.windows.capture.resize( 1280, 720 )
---```
---@param width number The width to resize to.
---@param height number The height to resize to.
---@type fun(width: number, height: number)
capture.resize = function(width, height)end


---This will find an image within another image.
---
--- ### Example
---
---```
---local x, y, x2, y2 = constellation.windows.capture.find_image( "my_picture.png", "my_second_picture.png" )
---```
---@param image number The image to search in.
---@param search_image number The image to search for.
---@return number, number, number, number The x, y, x2, y2 coordinates of the image.
---@type fun(image: number, search_image: number): number, number, number, number
capture.find_image = function(image, search_image)end


---This will find a stored capture inside of your current capture.
---
--- ### Example
---
---```
----- load pikachu picture.
---constellation.windows.capture.image( "pikachu.png" )
---local image_pikachu = constellation.windows.capture.store()
---constellation.windows.capture.desktop( )
---local x, y, x2, y2 = constellation.windows.capture.find( "my_picture.png" )
---```
---@param capture number The capture to search for.
---@return number, number, number, number The x, y, x2, y2 coordinates of the image.
---@type fun(capture: number): number, number, number, number
capture.find = function(capture)end


---This will record the current active Constellation window. Constellation records at 60fps.
---
--- ### Example
---
---```
---constellation.windows.capture.record( "test.mp4", 190 )
---```
---@param name string The name of the recording.
---@param frames_to_record number The number of frames to record.
---@type fun(name: string, frames_to_record: number)
capture.record = function(name, frames_to_record)end
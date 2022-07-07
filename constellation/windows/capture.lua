---These function are for image manipulation and capturing pixels on a target window or desktop. The ideal usage for this is to find images within other images, take screenshots, botting, pixel aimbot creation and other automated transactions.
---
---See the guide thread "Image Manipulation (constellation.windows.capture)" for a detailed breakdown and further example usage of these functions.
---@type capture
capture = {

}


---This screenshots/captures a window.
---
---@type fun(string: string, window_name: string): boolean
---@param string idk
---@param window_name Name of the window to capture.
---@return boolean True if the window was found and captured, false if not.
---.
--- ### Example
---
---```
---constellation.windows.capture.window( "", "Counter-Strike: Global Offensive - Direct3D 9" )
---```
capture.window = function()end


---This screenshots/captures your desktop. This will capture ALL monitors connected to your system as well.
---
---@type fun(): boolean
---@return boolean True if the desktop was captured, false if not.
---.
--- ### Example
---
---```
---constellation.windows.capture.desktop( )
---```
capture.desktop = function()end


---This will get the RGB of a specific area of your last capture.
---
---@type fun(x: number, y: number) : number, number, number
---@param x X coordinate.
---@param y Y coordinate.
---@return number, number, number The red, green, and blue values of the pixel.
---.
--- ### Example
---
---```
---constellation.windows.capture.desktop( )
---local r, g, b = constellation.windows.capture.get_rgb( 10, 10 ) -- What color is the pixel on my desktop at location 10, 10?
---```
capture.get_rgb = function()end


---This will save your last capture to a file.
---
---@type fun(file_name: string)
---@param file_name Name of the file to save the capture to.
---.
--- ### Example
---
---```
---constellation.windows.capture.desktop( )
---constellation.windows.capture.save( "my_desktop.png" )
---```
capture.save = function()end


---This will get the width and height of your last capture.
---
---@type fun(): number, number
---@return number, number The width and height of the capture.
---.
--- ### Example
---
---```
---constellation.windows.capture.window( "", "Team Fortress 2" )
---local width, height = constellation.windows.capture.dimensions( ) -- Size of your TF2 window and screenshot.
---```
capture.dimensions = function()end


---This will change the focus region of your last capture. Instead of scanning through a whole image, you can scan a small area within the image.
---
---@type fun(x: number, y: number, width: number, height: number)
---@param x X coordinate.
---@param y Y coordinate.
---@param width Width of the region.
---@param height Height of the region.
---.
--- ### Example
---
---```
---constellation.windows.capture.desktop(  )
---constellation.windows.capture.region( 0, 0, 256, 256 )
---constellation.windows.capture.save( "my_desktop_region.png" )
---```
capture.region = function()end


---This will set your capture to an image file.
---
---@type fun(file_name: string)
---@param file_name Name of the file to set the capture to.
---.
--- ### Example
---
---```
---constellation.windows.capture.image( "my_picture.png" )
---```
capture.image = function()end


---This will grayscale your last capture.
---
---@type fun()
---.
--- ### Example
---
---```
----- load my image
---constellation.windows.capture.image( "my_picture.png" )
---constellation.windows.capture.grayscale()
---constellation.windows.capture.image( "my_picture_grayscaled.png" )
---```
capture.grayscale = function()end


---This will compare your current capture to a stored capture.
---
---@type fun(image: number): number, number
---@param image number The image stored to compare to
---@return number, number pixels_in_common, percentage_difference. The percentage of similarity between the two images.
---.
--- ### Example
---
---```
----- load pikachu picture.
---constellation.windows.capture.image( "pikachu.png" )
---local image_pikachu = constellation.windows.capture.store()
---constellation.windows.capture.desktop( )
---local pixels_in_common, percentage_difference = constellation.windows.capture.compare( image_pikachu )
---```
capture.compare = function()end


---This will compare two images.
---
---@type fun(image1: number, image2: number): number, number
---@param image1 number The first image to compare.
---@param image2 number The second image to compare.
---@return number, number pixels_in_common, percentage_difference. The percentage of similarity between the two images.
---.
--- ### Example
---
---```
---local pixels_in_common, percentage_difference = constellation.windows.capture.image( "my_picture.png", "my_second_picture.jpg" )
---```
capture.compare_images = function()end


---This will compare your last capture to an image file.
---
---@type fun(image: string): number, number
---@param image string The image file to compare to.
---@return number, number pixels_in_common, percentage_difference. The percentage of similarity between the two images.
---.
--- ### Example
---
---```
---constellation.windows.capture.desktop(  )
---local pixels_in_common, percentage_difference = constellation.windows.capture.compare_to_image( "my_second_picture.jpg" )
---```
capture.compare_to_image = function()end


---This will store your current capture to Constelia's memory bank. This will raise the RAM usage of Constellation. This function is very useful for comparing images that aren't changing. It is a slow process to capture/screenshot windows, images and files. This function is designed to counter that.
---
---@type fun(): number
---@return number The image stored in Constelia memory bank.
---.
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
capture.store = function()end


---This will compare two captures.
---
---@type fun(capture1: number, capture2: number): number, number
---@param capture1 number The first capture to compare.
---@param capture2 number The second capture to compare.
---@return number, number pixels_in_common, percentage_difference. The percentage of similarity between the two images.
---.
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
capture.compare_captures = function()end


---This will display your current capture in a GUI. This is good for debugging.
---
---@type fun(display_name: string)
---@param display_name string The name of the display.
---.
--- ### Example
---
---```
---constellation.windows.capture.desktop( )
---constellation.windows.capture.display( "My Desktop" )
---```
capture.display = function()end


---This will close the display you have created.
---
---@type fun(display_name: string)
---@param display_name string The name of the display.
---.
--- ### Example
---
---```
---constellation.windows.capture.close_display( "My Desktop" )
---```
capture.close_display = function()end


---This will clear all stored captures and will clear your current capture.
---
---@type fun()
---.
--- ### Example
---
---```
---constellation.windows.capture.clear( )
---```
capture.clear = function()end


---This will resize your current capture.
---
---@type fun(width: number, height: number)
---@param width number The width to resize to.
---@param height number The height to resize to.
---.
--- ### Example
---
---```
---constellation.windows.capture.desktop( )
---constellation.windows.capture.resize( 1280, 720 )
---```
capture.resize = function()end


---This will find an image within another image.
---
---@type fun(image: number, search_image: number): number, number, number, number
---@param image number The image to search in.
---@param search_image number The image to search for.
---@return number, number, number, number The x, y, x2, y2 coordinates of the image.
---.
--- ### Example
---
---```
---local x, y, x2, y2 = constellation.windows.capture.find_image( "my_picture.png", "my_second_picture.png" )
---```
capture.find_image = function()end


---This will find a stored capture inside of your current capture.
---
---@type fun(capture: number): number, number, number, number
---@param capture number The capture to search for.
---@return number, number, number, number The x, y, x2, y2 coordinates of the image.
---.
--- ### Example
---
---```
----- load pikachu picture.
---constellation.windows.capture.image( "pikachu.png" )
---local image_pikachu = constellation.windows.capture.store()
---constellation.windows.capture.desktop( )
---local x, y, x2, y2 = constellation.windows.capture.find( "my_picture.png" )
---```
capture.find = function()end


---This will record the current active Constellation window. Constellation records at 60fps.
---
---@type fun(name: string, frames_to_record: number)
---@param name string The name of the recording.
---@param frames_to_record number The number of frames to record.
---.
--- ### Example
---
---```
---constellation.windows.capture.record( "test.mp4", 190 )
---```
capture.record = function()end
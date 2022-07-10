---These function(s) perform manage interactions with the driver. Some of these functions require a moderate understanding of programming. Using these functions incorrectly can damage your computer.
---@class driver
driver = {}



---This will check if the driver is running. This will also return false if Constellation hasn't been given the opportunity to check for the driver to begin with. The function `constellation.driver.start` will do that.
---
--- ### Example
---```
---if not constellation.driver.is_running( ) then
---⠀⠀constellation.log( "The driver isn't running or hasn't been validated!" )
---end
---```
---@return boolean Whether the driver is running.
---@type fun(): boolean
driver.is_running = function()end



---This will simulation a left mouse click from the kernel mouse driver.
---
--- ### Example
---```
---constellation.driver.click()
---```
---@type fun()
driver.click = function()end



---This will simulation a right mouse click from the kernel mouse driver.
---
--- ### Example
---```
---constellation.driver.right_click()
---```
---@type fun()
driver.right_click = function()end



---This will run the instructions of Constellation to start the driver.
---
--- ### Example
---
---```
---if not constellation.driver.is_running( ) then
---⠀⠀constellation.log( "The driver isn't running or hasn't been validated. Working now..." )
---⠀⠀constellation.driver.start()
---
---⠀⠀if not constellation.driver.is_running( ) then
---⠀⠀⠀⠀constellation.log("Driver still isn't running. See log.txt")
---⠀⠀end
---end
---```
---@type fun()
driver.start = function()end



---This will make the kernel driver select a process for memory hacking. This function is VERY important. Do not use any other memory related functions without calling this first. You will BSOD and potentially damage your computer.
---
--- ### Example
---
---```
---if not constellation.driver.calibrate( "l4d2.exe" ) then
---..constellation.log("L4D2 is not open or couldn't be calibrated with.")
---end
---```
---@param process_name string The name of the process to calibrate with.
---@return boolean Calibration success or not
---@type fun(process_name: string): boolean
driver.calibrate = function(process_name)end



---This will make the kernel driver find a module inside the process you calibrated. You must call constellation.driver.calibrate on a process before using this. Using this function without successful calibration will result in a BSOD and potentially damage your computer.
---
--- ### Example
---
---```
---if not constellation.driver.calibrate( "l4d2.exe" ) then
---⠀⠀constellation.log("L4D2 is not open or couldn't be calibrated with.")
---⠀⠀return false
---end
---
---local base_address, size = constellation.driver.module( "client.dll" )
---```
---@param process_name string The name of the process to calibrate with.
---@return boolean
---@type fun(process_name: string): boolean
driver.module = function(process_name)end



---This will make the kernel driver find a module inside the process you calibrated. You must call constellation.driver.calibrate on a process before using this. Using this function without successful calibration will result in a BSOD and potentially damage your computer.
---
--- ### Example
---
---```
---if not constellation.driver.calibrate( "l4d2.exe" ) then
---⠀⠀constellation.log("L4D2 is not open or couldn't be calibrated with.")
---⠀⠀return false
---end
---
---local base_address, size = constellation.driver.module_x86( "client.dll" )
---```
---@param process_name string The name of the process to calibrate with.
---@return boolean Calibration success or not
---@type fun(process_name: string): boolean
driver.module_x86 = function(process_name)end



---This will make the kernel driver decalibrate from a process that was once calibrated via `constellation.driver.calibrate`. You must call `constellation.driver.calibrate` on a process before using this. Using this function without successful calibration will result in a BSOD and potentially damage your computer.
---
--- ### Example
---
---```
---if not constellation.driver.calibrate( "l4d2.exe" ) then
---⠀⠀constellation.log("L4D2 is not open or couldn't be calibrated with.")
---⠀⠀return false
---end
---
---local base_address, size = constellation.driver.module( "client.dll" )
---
---constellation.log( base_address )
---constellation.log( size )
---
---constellation.driver.reset()
---```
---@type fun()
driver.reset = function()end



---Moves your mouse.
---
--- ### Example
---
---`constellation.driver.move( 50, 50, MOUSE_MOVE_RELATIVE )`
---@param x number The x coordinate to move to.
---@param y number The y coordinate to move to.
---@param flags number The flags to use.
---@type fun(x: number, y: number, flags: number)
driver.move = function(x, y, flags)end



---Same thing as `constellation.driver.move`.
---
---@type fun(x: number, y: number, flags: number)
driver.mouse = function()end
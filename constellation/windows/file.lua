---These function(s) are for file management.
---@type file
file = {}

---This will write to a file. However, the old content will be erased. If the file doesn't exist, it will create one for you.
---@type fun(file: string, content: string)
---@param file string The file to write to.
---@param content string The content to write to the file.
---.
--- ### Example
---
---```
---constellation.windows.file.write( constellation.vars.get( "directory" ) .. "constellation\\hello_world.txt", "hello world, this is an example text!")
---```
file.write = function()end

---This will write to a file and add to it. If the file doesn't exist, it will create one for you.
---@type fun(file: string, data: string)
---@param file string The file to write to.
---@param data string The data to write to the file.
---.
--- ### Example
---
---```
---constellation.windows.file.append( constellation.vars.get( "directory" ) .. "constellation\\hello_world.txt", "This is my second sentence.")
---```
file.append = function()end


---This will read a file and return the content in a string. This does not return special characters found inside of a file.
---@type fun(file: string): string
---@param file string The file to read.
---@return string The content of the file.
---.
--- ### Example
---
---```
---local file_content = constellation.windows.file.read( constellation.vars.get( "directory" ) .. "constellation\\hello_world.txt" )
---constellation.log( file_content )
---```
file.read = function()end



---This will check if a file exists or not.
---@type fun(file: string): boolean
---@param file string The file to check.
---@return boolean True if the file exists, false if it doesn't.
---.
--- ### Example
---
---```
---if not constellation.windows.file.exists( constellation.vars.get( "directory" ) .. "constellation\\hello_world.txt" ) then
---    constellation.log("Where did our hello_world.txt file go?")
---end
---```
file.exists = function()end



---This will copy a file.
---@type fun(file: string, new_file: string)
---@param file string The file to copy.
---@param new_file string The new file name.
---.
--- ### Example
---
---```
---
---```
file.copy = function()end



---This will get the hash of a file/folder.
---@type fun(file: string)
---@param file string The file to get the hash of.
---.
--- ### Example
---
---```
---
---```
file.hash = function()end



---This will rename a file/folder.
---@type fun(file: string, new_file: string)
---@param file string The file to rename.
---@param new_file string The new file name.
---.
--- ### Example
---
---```
---
---```
file.rename = function()end


---This will remove a file/folder.
---@type fun(file: string)
---@param file string The file to remove.
---.
--- ### Example
---
---```
---
---```
file.remove = function()end



---This will check if a folder is empty.
---@type fun(folder: string)
---@param folder string The folder to check.
---.
--- ### Example
---
---```
---
---```
file.is_empty = function()end



---This will create a directory OR multiple directories.
---@type fun(folder: string)
---@param folder string The folder to create.
---.
--- ### Example
---
---```
---constellation.windows.file.create_directory("my_test_directory")
---constellation.windows.file.create_directory( "first\\second\\third" ) -- creates multiple directories.
---```
file.create_directory = function()end
---These function(s) are for file management.
---@class file
file = {}

---This will write to a file. However, the old content will be erased. If the file doesn't exist, it will create one for you.
--- ### Example
---
---```
---constellation.windows.file.write( constellation.vars.get( "directory" ) .. "constellation\\hello_world.txt", "hello world, this is an example text!")
---```
---@param file string The file to write to.
---@param content string The content to write to the file.
---@type fun(file: string, content: string)
file.write = function(file, content)end

---This will write to a file and add to it. If the file doesn't exist, it will create one for you.
--- ### Example
---
---```
---constellation.windows.file.append( constellation.vars.get( "directory" ) .. "constellation\\hello_world.txt", "This is my second sentence.")
---```
---@param file string The file to write to.
---@param data string The data to write to the file.
---@type fun(file: string, data: string)
file.append = function(file, data)end


---This will read a file and return the content in a string. This does not return special characters found inside of a file.
--- ### Example
---
---```
---local file_content = constellation.windows.file.read( constellation.vars.get( "directory" ) .. "constellation\\hello_world.txt" )
---constellation.log( file_content )
---```
---@param file string The file to read.
---@return string The content of the file.
---@type fun(file: string): string
file.read = function(file)end



---This will check if a file exists or not.
--- ### Example
---
---```
---if not constellation.windows.file.exists( constellation.vars.get( "directory" ) .. "constellation\\hello_world.txt" ) then
---    constellation.log("Where did our hello_world.txt file go?")
---end
---```
---@param file string The file to check.
---@return boolean True if the file exists, false if it doesn't.
---@type fun(file: string): boolean
file.exists = function(file)end



---This will copy a file.
--- ### Example
---
---```
---
---```
---@param file string The file to copy.
---@param new_file string The new file name.
---@type fun(file: string, new_file: string)
file.copy = function(file, new_file)end



---This will get the hash of a file/folder.
--- ### Example
---
---```
---
---```
---@param file string The file to get the hash of.
---@type fun(file: string)
file.hash = function(file)end



---This will rename a file/folder.
--- ### Example
---
---```
---
---```
---@param file string The file to rename.
---@param new_file string The new file name.
---@type fun(file: string, new_file: string)
file.rename = function(file, new_file)end


---This will remove a file/folder.
--- ### Example
---
---```
---
---```
---@param file string The file to remove.
---@type fun(file: string)
file.remove = function(file)end



---This will check if a folder is empty.
--- ### Example
---
---```
---
---```
---@param folder string The folder to check.
---@type fun(folder: string)
file.is_empty = function(folder)end



---This will create a directory OR multiple directories.
--- ### Example
---
---```
---constellation.windows.file.create_directory("my_test_directory")
---constellation.windows.file.create_directory( "first\\second\\third" ) -- creates multiple directories.
---```
---@param folder string The folder to create.
---@type fun(folder: string)
file.create_directory = function(folder)end
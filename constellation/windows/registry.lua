---These function(s) allow you to read and write registry values. Consider the following global variables for the first parameter of these functions:
---HKEY_LOCAL_MACHINE
---HKEY_CURRENT_USER
---HKEY_CLASSES_ROOT
---HKEY_CURRENT_CONFIG
---HKEY_USERS
---@class registry
registry = {}


---This will read a string value.
---
--- ### Example
---
---```
---local windows_build = constellation.windows.registry.read_string(HKEY_LOCAL_MACHINE, "SYSTEM\\Software\\Microsoft", "BuildLab")
---```
---@param global_variable number The global variable to read from.
---@param key string The key to read from.
---@param value string The value to read.
---@return string The value read.
---@type fun(global_variable: number, key: string, value: string): string
registry.read_string = function(global_variable, key, value)end


---This will read a DWORD value.
---
--- ### Example
---
---```
---local csd_version = constellation.windows.registry.read_dword(HKEY_LOCAL_MACHINE, "SYSTEM\\ControlSet001\\Control\\Windows", "CSDBuildNumber")
---```
---@param global_variable number The global variable to read from.
---@param key string The key to read from.
---@param value string The value to read.
---@return number The value read.
---@type fun(global_variable: number, key: string, value: string): number
registry.read_dword = function(global_variable, key, value)end


---This will write a string value.
---
--- ### Example
---
---```
---
---```
---@param global_variable number The global variable to write to.
---@param key string The key to write to.
---@param value string The value to write.
---@param data string The data to write.
---@type fun(global_variable: number, key: string, value: string, data: string)
registry.write_string = function(global_variable, key, value, data)end


---This will write a DWORD value.
---
--- ### Example
---
---```
---
---```
---@param global_variable number The global variable to write to.
---@param key string The key to write to.
---@param value string The value to write.
---@param data number The data to write.
---@type fun(global_variable: number, key: string, value: string, data: number)
registry.write_dword = function(global_variable, key, value, data)end
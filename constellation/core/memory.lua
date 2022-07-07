---These function(s) perform manage memory interactions with the driver. Some of these functions require a moderate understanding of programming. Using these functions incorrectly can damage your computer. To prevent abuse and a risk to account security, there are currently no writing functions available.
---@type memory
local memory = {}



---Pattern scanningPattern scanning
---
---@type fun(module_address: number, module_size: number, pattern: string, offset: number, extra: number, unrelativity: number)
---@param module_address number The address of the module to scan.
---@param module_size number The size of the module to scan.
---@param pattern string The pattern to scan for.
---@param offset number The offset to start the scan at.
---@param extra number The number of extra bytes to scan for.
---@param unrelativity number The number of bytes to skip before the pattern?
---.
--- ### Example
---```
---⠀⠀-- https://github.com/frk1/hazedumper/blob/master/config.json#L285
---local dwLocalPlayer = constellation.driver.pattern( 
---⠀⠀module_client.address, -- client.dll
---⠀⠀module_client.size, -- client.dll's size.
---⠀⠀"8D 34 85 ? ? ? ? 89 15 ? ? ? ? 8B 41 08 8B 48 04 83 F9 FF", -- pattern
---⠀⠀3, -- offset
---⠀⠀4, -- extra
---⠀⠀0, -- unrelativity
---)
---
---⠀⠀-- dwLocalPlayer should equal 14316652 (as of this documentation edit) | https://github.com/frk1/hazedumper/blob/master/csgo.json#L34
---constellation.log( dwLocalPlayer )
---```
driver.pattern = function()end



---This will get a netvar.
---
---@type fun(table: string, netvar: string): number
---@param table string Table
---@param name string Name
---@return number The value of the netvar.
---.
--- ### Example
---
---```
---⠀-- https://github.com/frk1/hazedumper/blob/master/config.json#L619
---m_bInReload = constellation.memory.netvar( "DT_BaseCombatWeapon", "m_flNextPrimaryAttack" ) + 109
---
---⠀-- https://github.com/frk1/hazedumper/blob/master/config.json#L630
---m_bIsScoped = constellation.memory.netvar( "DT_CSPlayer", "m_bIsScoped" )
---```
memory.netvar = function()end



---This will read a memory address.
---
---@type fun(address: number): number
---@param address number The address to read.
---@return number The value at the address.
---.
--- ### Example
---
---```
---⠀-- https://github.com/frk1/hazedumper/blob/master/config.json#L630
---m_bIsScoped = constellation.memory.netvar( "DT_CSPlayer", "m_bIsScoped" )
--- 
---local is_scoped = constellation.memory.read( localplayer + m_bIsScoped )
--- 
---if is_scoped == 1 then
---⠀⠀constellation.log("You're scoped in!")
---end
---```
memory.read = function()end



---This will call `constellation.memory.read` except return a 64-bit result (which is unsupported).
---
---@type fun(address: number): number
---@param address number The address to read.
---@return number The value at the address.
---.
memory.read_x64 = function()end



---This will call `constellation.memory.read` except return a integer.
---
---@type fun(address: number): number
---@param address number The address to read.
---@return number The value at the address.
---.
memory.read_integer = function()end



---This will call `constellation.memory.read` except return a float.
---
---@type fun(address: number): number
---@param address number The address to read.
---@return number The value at the address.
---.
memory.read_float = function()end



---This will call `constellation.memory.read` except return a string.
---
---@type fun(address: number): string
---@param address number The address to read.
---@return number The value at the address.
---.
memory.read_string = function()end



---This will call `constellation.memory.read` except return a vector.
---
---@type fun(address: number): number
---@param address number The address to read.
---@return number The value at the address.
---.
memory.read_vector = function()end



---This will call `constellation.memory.read` except return a short.
---
---@type fun(address: number): number
---@param address number The address to read.
---@return number The value at the address.
---.
memory.read_short = function()end



---This is constellation.memory.pattern except this will get the absolute address. This is useful for memory hacking 64-bit software.
---
---@type fun(module_base_address: number, module_size: number, signature: number, offset: number): number
---@param module_base_address number The address of the module to scan.
---@param module_size number The size of the module to scan.
---@param signature string The pattern to scan for.
---@param offset number The offset to start the scan at.
---@return number The absolute address of the pattern.
---.
memory.pattern_abs = function()end
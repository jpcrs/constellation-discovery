---These function(s) perform manage memory interactions with the driver. Some of these functions require a moderate understanding of programming. Using these functions incorrectly can damage your computer. To prevent abuse and a risk to account security, there are currently no writing functions available.
---@class memory
local memory = {}

---This will get a netvar.
---
--- ### Example
---
---```
---⠀-- https://github.com/frk1/hazedumper/blob/master/config.json#L619
---m_bInReload = constellation.memory.netvar( "DT_BaseCombatWeapon", "m_flNextPrimaryAttack" ) + 109
---
---⠀-- https://github.com/frk1/hazedumper/blob/master/config.json#L630
---m_bIsScoped = constellation.memory.netvar( "DT_CSPlayer", "m_bIsScoped" )
---```
---@param table string Table
---@param name string Name
---@return number The value of the netvar.
---@type fun(table: string, netvar: string): number
memory.netvar = function(table, name)end



---This will read a memory address.
---
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
---@param address number The address to read.
---@return number The value at the address.
---@type fun(address: number): number
memory.read = function(address)end



---This will call `constellation.memory.read` except return a 64-bit result (which is unsupported).
---
---@param address number The address to read.
---@return number The value at the address.
---@type fun(address: number): number
memory.read_x64 = function(address)end



---This will call `constellation.memory.read` except return a integer.
---
---@param address number The address to read.
---@return number The value at the address.
---@type fun(address: number): number
memory.read_integer = function(address)end



---This will call `constellation.memory.read` except return a float.
---
---@param address number The address to read.
---@return number The value at the address.
---@type fun(address: number): number
memory.read_float = function(address)end



---This will call `constellation.memory.read` except return a string.
---
---@param address number The address to read.
---@return number The value at the address.
---@type fun(address: number): string
memory.read_string = function(address)end



---This will call `constellation.memory.read` except return a vector.
---
---@param address number The address to read.
---@return number The value at the address.
---@type fun(address: number): number
memory.read_vector = function(address)end



---This will call `constellation.memory.read` except return a short.
---
---@param address number The address to read.
---@return number The value at the address.
---@type fun(address: number): number
memory.read_short = function(address)end



---This is constellation.memory.pattern except this will get the absolute address. This is useful for memory hacking 64-bit software.
---
---@param module_base_address number The address of the module to scan.
---@param module_size number The size of the module to scan.
---@param signature string The pattern to scan for.
---@param offset number The offset to start the scan at.
---@return number The absolute address of the pattern.
---@type fun(module_base_address: number, module_size: number, signature: number, offset: number): number
memory.pattern_abs = function(module_base_address, module_size, signature, offset)end
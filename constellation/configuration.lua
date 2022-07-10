---These function(s) are used for managing your configuration. The configuration system is managed by what is called a FantasyVar. These are dynamic variables that can be accessed through either the Web SDK or the Lua module. They are configuration variables and can be accessed anywhere in Constellation. Some FantasyVars are protected and will not be saved or loaded.
---@class configuration
configuration = {}

---Saves your configuration.
---@type fun()
configuration.save = function() end

---Loads your configuration.
---@type fun()
configuration.load = function() end
---These function(s) control FantasyVars. The configuration system is managed by what is called a FantasyVar. These are dynamic variables that can be accessed through either the Web SDK or the Lua module. They are configuration variables and can be accessed anywhere in Constellation. Some FantasyVars are protected and will not be saved or loaded.
---@type vars
local vars = {}



---This adds a new FantasyVar to the database. It will be saved in your configuration. If the FantasyVar already exists, it will simply set a new value to it. Try not to set both a string and a number/boolean value to the same FantasyVar. It will lead to unwanted results.
---When you create a FantasyVar with a boolean value, it is translated to 1 or 0. True being 1 and False being 0. See constellation.vars.get.
---
---@type fun(var_name: string): number|string|boolean
---@param var_name string The name of the FantasyVar.
---@return number|string|boolean The value of the FantasyVar.
---.
---
--- ### Example
---
---```
---constellation.vars.add( "is_this_an_example", true )
---```
vars.add = function()end



---This will get a FantasyVar. If the FantasyVar doesn't exist, this function will return nil.
---
---@type fun(var_name: string): number|string|boolean
---@param var_name string The name of the FantasyVar.
---@return number|string|boolean The value of the FantasyVar.
---.
--- ### Example
---
---```
---if constellation.vars.get( "is_this_an_example" ) == 1 then
---⠀⠀constellation.log("This is an example!")
---end
---```
vars.get = function()end



---This will get a FantasyVar that is a string but contains a hex number. If the FantasyVar doesn't exist, this function will return nil.
---
---@type fun(): number, number, number
---@return r,g,b The red, green, and blue values of the color.
---.
--- ### Example
---
---```
---local r, g, b = constellation.vars.get_color( "esp_feature_color" )
---```
vars.get_color = function()end



---This function does many things. The main purpose of this function is to add a new menu option inside of menu.html. This is so those who use the script you created can directly switch settings on/off or change values. Think of this as creating your own menu option.
---
---This function adds a FantasyVar for you. Therefore, you do not need to use constellation.vars.add. This function requires basic understanding of HTML and the fantasy_cmd function in the Web SDK.
---
---See this thread for examples and a full description: https://fantasy.cat/forums/index.php?threads/lua-%E2%86%92-web-menu-options.5583/
---
---@type fun(label: string, fantasyvar: string, html_code: string, value: number|string|boolean):
---@param label string The label of the menu option.
---@param fantasyvar string The name of the FantasyVar.
---@param html_code string The HTML code to be inserted into the menu.
---@param value number|string|boolean The value.
---.
--- ### Example
---
---```
---constellation.vars.menu("Enable Linker", "linker_enabled", "<input name='linker_enabled' type='checkbox' onchange=\"fantasy_cmd(this, 'set')\" />", true)
---```
vars.menu = function()end
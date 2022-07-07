
---These function(s) perform basic math functions.
---@type math
local math = {}

---Gets the distance between two vectors.
---
---@type fun(origin_x: number, origin_y: number, origin_z: number, target_x: number, target_y: number, target_z: number): number
---@param origin_x number The X coordinate of the origin.
---@param origin_y number The Y coordinate of the origin.
---@param origin_z number The Z coordinate of the origin.
---@param target_x number The X coordinate of the target.
---@param target_y number The Y coordinate of the target.
---@param target_z number The Z coordinate of the target.
---@return number The distance between the two vectors.
---.
--- ### Example
---
---```
---local distance = constellation.math.vector_distance( player_information["origin"]["x"], player_information["origin"]["y"], player_information["origin"]["z"], enemy_information["origin"]["x"], enemy_information["origin"]["y"], enemy_information["origin"]["z"])
---```
math.vector_distance = function()end

---Gets the distance between two vectors squared.
---
---@type fun(origin_x: number, origin_y: number, origin_z: number, target_x: number, target_y: number, target_z: number): number
---@param origin_x number The X coordinate of the origin.
---@param origin_y number The Y coordinate of the origin.
---@param origin_z number The Z coordinate of the origin.
---@param target_x number The X coordinate of the target.
---@param target_y number The Y coordinate of the target.
---@param target_z number The Z coordinate of the target.
---@return number The distance between the two vectors squared.
---.
--- ### Example
---
---```
---local distance = constellation.math.vector_distance_sqr( player_information["origin"]["x"], player_information["origin"]["y"], player_information["origin"]["z"], enemy_information["origin"]["x"], enemy_information["origin"]["y"], enemy_information["origin"]["z"])
---```
math.vector_distance_sqr = function()end

---Gets the length of a vector
---
---@type fun(x: number, y: number, z: number): number
---@param x number The X coordinate of the vector.
---@param y number The Y coordinate of the vector.
---@param z number The Z coordinate of the vector.
---@return number The length of the vector.
---.
--- ### Example
---
---```
---local length = constellation.math.length( enemy_information["origin"]["x"], enemy_information["origin"]["y"], enemy_information["origin"]["z"] )
---```
math.length = function()end
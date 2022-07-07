---These function(s) perform HTTP data.
---@type http
local http = {}

---This will go to a URL. Then the content of the page is returned in a string. This is useful for API calls and GET data.
---
---@type fun(url: string): string
---@param url string The URL to download.
---@return string The content of the page.
---.
--- ### Example
---
---```
---local google = constellation.http.download( "https://google.com" )
---print(google)
---```
http.download = function()end

---This will go to a URL. Then the content is downloaded to a file directly.
---
---@type fun(url: string, directory: string)
---@param url string The URL to download.
---@param directory string The directory to download the file to.
---.
--- ### Example
---
---```
--- // downloads a picture of hyper Constelia to your Constellation folder.
---constellation.http.download( "https://i.imgur.com/pMnUNG4.png", constellation.vars.get( "directory" ) .. "constellation\\" .. constelia_calm_down.png" )
---```
http.download_file = function()end

---This wraps the Web API. You will still need to parse the JSON data.
---
---@type fun(web_api_method: string, params: string): string
---@param web_api_method string The name of the Web API method.
---@param params string The parameters to pass to the Web API.
---@return string The JSON data.
---.
--- ### Example
---
---```
---local json_stats = constellation.http.api( "getStats", "" )
---local json_software = constellation.http.api( "getSoftware", "name=constellation" )
---
---print( json_stats )
---print( json_software )
---```
http.api = function()end
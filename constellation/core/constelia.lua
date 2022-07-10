---These function(s) are used for managing Constelia. Constelia is the AI inside of Constellation that communicates with you. She is also your assistant. Constelia is the driving force behind the customization of Constellation. She will prompt you during launch about different settings and will question your need for specific settings.
---@class constelia
local constelia = {}



---This will make Constelia say something in the notification.
---
---@param text string The text that will be printed
---@type fun(text: string)
constelia.say = function(text)end
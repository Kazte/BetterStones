local addonName, addonTable = ...

-- Initialize your addon namespace
MyHearthstoneAddon = {}
local MyHearthstoneAddon = MyHearthstoneAddon

-- Load other Lua files
local function LoadModules()
    MyHearthstoneAddon:LoadSpells()
    MyHearthstoneAddon:CreateMinimapButton()
end

-- Call the function to load modules
LoadModules()

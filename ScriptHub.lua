-- Initialize Orion Library
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Create Window
local Window = OrionLib:MakeWindow({
    Name = "Script Hub",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "ScriptHub"
})

-- Scripts Section
local ScriptsTab = Window:MakeTab({
    Name = "Scripts",
    Icon = "rbxassetid://4483345998", -- Icon can be changed
    PremiumOnly = false
})

-- Function to add buttons for scripts
local function addScriptButton(name, description, executeFunction)
    ScriptsTab:AddButton({
        Name = name,
        Callback = executeFunction
    })
end

-- Rivals Script
addScriptButton("Rivals", "A script for rivals.", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/OliMasterpl/roblox-scripts/refs/heads/main/rivals.lua', true))()
end)

-- Load UI
OrionLib:Init()

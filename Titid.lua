local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
local Player = game.Players.LocalPlayer

local Window = WindUI:CreateWindow({
    Title = "SecretRoom",
    Icon = "venetian-mask",
    Author = "Florian",
    Folder = "SecretRoom",

    -- optional settings (kept from your chat)
    Size = UDim2.fromOffset(580, 460),
    MinSize = Vector2.new(560, 350),
    MaxSize = Vector2.new(850, 560),
    Transparent = true,
    Theme = "Dark",
    Resizable = true,
    SideBarWidth = 200,
    BackgroundImageTransparency = 0.42,
    HideSearchBar = true,
    ScrollBarEnabled = false,

    User = {
        Enabled = true,
        Anonymous = true,
        Callback = function()
            print("User clicked")
        end,
    },

    KeySystem = { 
        Key = { "1" },
        Note = "Example Key System.",
        Thumbnail = {
            Image = "rbxassetid://",
            Title = "Thumbnail",
        },
        URL = "YOUR LINK TO GET KEY (Discord, Linkvertise, Pastebin, etc.)",
        SaveKey = false,
    },
})

-- Home tab from your chat
local HomeTab = Window:Tab({
    Title = "Home",
    Icon = "open-door",
    Locked = false,
})

local Button = HomeTab:Button({
    Title = "Button",
    Desc = "Test Button",
    Locked = false,
    Callback = function()
        print("clicked")
    end
})

-- Main tab (from Nusantara file, standardized variable name MainTab)
local MainTab = Window:Tab({
    Title = "Main",
    Icon = "house",
})

local Paragraph = MainTab:Paragraph({
    Title = "Thanks For Using DarknessHub!",
    Desc = "Enjoy!",
    Image = "droplet",
    ImageSize = 20,
    Buttons = {
        {
            Title = "Discord",
            Callback = function() print("Dc") end
        },
        {
            Title = "Tiktok",
            Callback = function() print("Tt") end
        },
        {
            Title = "Youtube",
            Callback = function() print("Yt") end
        }
    }
})

-- Server Hopper Button (with pcall)
local Button = MainTab:Button({
    Title = "Serverhop",
    Desc = "Move to New Server!.",
    Callback = function()
        local success, err = pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Groodev/AllInOne/refs/heads/main/Lower.lua"))()
        end)
        if success then
            print("hop successfully!")
        else
            warn("Failed to hop: " .. tostring(err))
        end
    end,
})

local Button = MainTab:Button({
    Title = "Lower Server",
    Desc = "Move to Low player server!.",
    Callback = function()
        local success, err = pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Groodev/AllInOne/refs/heads/main/Lower.lua"))()
        end)
        if success then
            print("hop successfully!")
        else
            warn("Failed to hop: " .. tostring(err))
        end
    end,
})

local Button = MainTab:Button({
    Title = "Rejoin",
    Desc = "Join this server again | Please Wait...",
    Callback = function()
        local TPS = game:GetService("TeleportService")
        local Players = game:GetService("Players")
        local localPlayer = Players.LocalPlayer
        TPS:Teleport(game.PlaceId, localPlayer)
    end
})

local Input = MainTab:Input({
    Title = "Teleport to Server Webhook",
    Desc = "Enter the server ID to teleport.",
    Callback = function(serverId)
        local TeleService = game:GetService("TeleportService")
        local Players = game:GetService("Players")

        if serverId and serverId ~= "" then
            TeleService:TeleportToPlaceInstance(game.PlaceId, serverId, Players.LocalPlayer)
        else
            warn("Invalid Job ID")
        end
    end
})

-- Free Script tab (scripts list from Nusantara file)
local FreeScriptTab = Window:Tab({
    Title = "Free Script",
    Icon = "scroll-text",
})

local Section = FreeScriptTab:Section({
    Title = "Script Bloxfruit Leaked",
    TextXAlignment = "Center",
    TextSize = 17,
})

local inject_safe = function(url)
    local success, err = pcall(function()
        loadstring(game:HttpGet(url))()
    end)
    return success, err
end

local Button = FreeScriptTab:Button({
    Title = "BlackTrap Keyless",
    Desc = "Injects the BlackTrap script without a key.",
    Callback = function()
        local ok, err = inject_safe("https://you.whimper.xyz/sources/btteam/BloxFruits.lua")
        if ok then print("Script injected successfully!") else warn("Failed: "..tostring(err)) end
    end,
})

local Button = FreeScriptTab:Button({
    Title = "Cokkahub Keyless",
    Desc = "Injects the CokkaHub script without a key.",
    Callback = function()
        local ok, err = inject_safe("https://raw.githubusercontent.com/UserDevEthical/Loadstring/2dd3531ecf006856286e2ed9cad363597e6da6ea/CokkaHub.lua")
        if ok then print("Script injected successfully!") else warn("Failed: "..tostring(err)) end
    end,
})

local Button = FreeScriptTab:Button({
    Title = "Idkhub Key",
    Desc = "Injects the anonymousHub script with a key.",
    Callback = function()
        local ok, err = inject_safe("https://raw.githubusercontent.com/berhddb/GOGOHUB_Bloxfruits_Dragon_Update/refs/heads/main/README.md")
        if ok then print("Script injected successfully!") else warn("Failed: "..tostring(err)) end
    end,
})

local Button = FreeScriptTab:Button({
    Title = "Redzhub Keyless",
    Desc = "Injects the Redzhub script without a key.",
    Callback = function()
        local ok, err = inject_safe("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.luaING123%20only%20key.txt")
        if ok then print("Script injected successfully!") else warn("Failed: "..tostring(err)) end
    end,
})

local Button = FreeScriptTab:Button({
    Title = "AnDepZaihub Keyless",
    Desc = "Injects the AnDepZaiHub script without a key.",
    Callback = function()
        local ok, err = inject_safe("https://raw.githubusercontent.com/AnDepZaiHub/AnDepZaiHubBeta/refs/heads/main/AnDepZaiHubNewUpdated.lua")
        if ok then print("Script injected successfully!") else warn("Failed: "..tostring(err)) end
    end,
})

local Button = FreeScriptTab:Button({
    Title = "Xerohub Keyless",
    Desc = "Injects the XeroHub script without a key.",
    Callback = function()
        local ok, err = inject_safe("https://apixerohub.x10.mx/main.lua")
        if ok then print("Script injected successfully!") else warn("Failed: "..tostring(err)) end
    end,
})

local Button = FreeScriptTab:Button({
    Title = "Raitohub Keyless",
    Desc = "Injects the RaitoHub script without a key.",
    Callback = function()
        local ok, err = inject_safe("https://raw.githubusercontent.com/Efe0626/RaitoHub/refs/heads/main/Script")
        if ok then print("Script injected successfully!") else warn("Failed: "..tostring(err)) end
    end,
})

local Button = FreeScriptTab:Button({
    Title = "Maruhub Keyless",
    Desc = "Injects the MaruHub script without a key.",
    Callback = function()
        local ok, err = inject_safe("https://raw.githubusercontent.com/YUKE000/BloxFruit/refs/heads/main/MARU-HUB-CRACKED")
        if ok then print("Script injected successfully!") else warn("Failed: "..tostring(err)) end
    end,
})

-- Misc tab
local MiscTab = Window:Tab({
    Title = "Misc",
    Icon = "cog",
})

-- Redeem codes helper
local function UseCode(code)
    pcall(function()
        if game:GetService("ReplicatedStorage").Remotes and game:GetService("ReplicatedStorage").Remotes.Redeem then
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(code)
        end
    end)
end

local button = MiscTab:Button({
    Title = "Redeem All Code",
    Desc = "2x exp code",
    Callback = function()
        local codes = {
            "Sub2Fer999",
            "Enyu_is_Pro",
            "Magicbus",
            "JCWK",
            "Starcodeheo",
            "Bluxxy",
            "THEGREATACE",
            "SUB2GAMERROBOT_EXP1",
            "StrawHatMaine",
            "Sub2OfficialNoobie",
            "SUB2NOOBMASTER123",
            "Sub2Daigrock",
            "Axiore",
            "TantaiGaming",
            "STRAWHATMAINE"
        }
        for _, code in ipairs(codes) do
            UseCode(code)
        end
    end
})

-- Bypass tab
local BypassTab = Window:Tab({
    Title = "Bypass",
    Icon = "shield-alert",
})

local ToggleAFK = BypassTab:Toggle({
    Title = "Anti AFK",
    Desc = "AFK bypass",
    Value = true,
    Callback = function(state)
        getgenv().AntiAFK = state
        task.spawn(function()
            while getgenv().AntiAFK do
                local vu = game:GetService("VirtualUser")
                local players = game:GetService("Players")
                players.LocalPlayer.Idled:Connect(function()
                    vu:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
                    wait(1)
                    vu:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
                end)
                task.wait(60) -- check every 60 seconds to avoid spam
            end
        end)
    end,
})

local ToggleKick = BypassTab:Toggle({
    Title = "Anti Kick",
    Desc = "You won't be kicked!",
    Value = true,
    Callback = function(state)
        getgenv().AntiKickClient = state
        task.spawn(function()
            while getgenv().AntiKickClient do
                pcall(function()
                    loadstring(game:HttpGet('https://gitlab.com/Sky2836/BT/-/raw/main/antikickclient'))()
                end)
                task.wait(5)
            end
        end)
    end,
})

local ToggleAntiBan = BypassTab:Toggle({
    Title = "Anti Ban",
    Desc = "Protect your account from staff.",
    Value = true,
    Callback = function(state)
        local players = game:GetService("Players")
        local localPlayer = players.LocalPlayer

        local function checkIsStaff(plr)
            local attr
            for i=1,40 do
                attr = plr:GetAttribute("_tag")
                if attr ~= nil then break end
                task.wait(0.25)
            end
            if not attr then return false end
            return attr < 0 or attr > 2
        end

        players.PlayerAdded:Connect(function(plr)
            plr:GetAttributeChangedSignal("_tag"):Connect(function()
                if state and checkIsStaff(plr) then
                    -- server hop away
                    local Http = game:GetService("HttpService")
                    local TPS = game:GetService("TeleportService")
                    local Api = "https://games.roblox.com/v1/games/"
                    local _place = game.PlaceId
                    local _servers = Api .. _place .. "/servers/Public?sortOrder=Asc&limit=100"

                    local function ListServers(cursor)
                        local Raw = game:HttpGet(_servers .. ((cursor and "&cursor=" .. cursor) or ""))
                        return Http:JSONDecode(Raw)
                    end

                    local Server, Next
                    repeat
                        local Servers = ListServers(Next)
                        Server = Servers.data and Servers.data[1]
                        Next = Servers.nextPageCursor
                    until Server

                    if Server and Server.id then
                        TPS:TeleportToPlaceInstance(_place, Server.id, localPlayer)
                    end
                end
            end)
        end)
    end,
})

-- Settings tab
local SettingsTab = Window:Tab({
    Title = "Settings",
    Icon = "settings"
})

local ToggleWalkOnWater = SettingsTab:Toggle({
    Title = "WalkOnWater",
    Desc = "Allow you to walk on water",
    Value = true,
    Callback = function(state)
        _G.WalkWater = state
    end    
})

spawn(function()
    while task.wait(1) do
        pcall(function()
            if _G.WalkWater and game:GetService("Workspace").Map and game:GetService("Workspace").Map:FindFirstChild("WaterBase-Plane") then
                game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 112, 1000)
            else
                if game:GetService("Workspace").Map and game:GetService("Workspace").Map:FindFirstChild("WaterBase-Plane") then
                    game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 80, 1000)
                end
            end
        end)
    end
end)

local ToggleInfSoru = SettingsTab:Toggle({
    Name = "Infinity Soru",
    Desc = "OP feature",
    Value = false,
    Callback = function(Value)
        getgenv().InfSoru = Value
    end    
})

spawn(function()
    while wait() do
        pcall(function()
            if getgenv().InfSoru and game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Soru") then
                for _, v in next, getgc() do
                    if typeof(v) == "function" and pcall(function() return getfenv(v).script end) and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Soru then
                        for _, v2 in next, getupvalues(v) do
                            if typeof(v2) == "table" then
                                repeat wait(0.1)
                                    v2.LastUse = 0
                                until not getgenv().InfSoru or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0
                            end
                        end
                    end
                end
            end
        end)
    end
end)

local ToggleNoclip = SettingsTab:Toggle({
    Name = "No Clip",
    Desc = "Classic no clip feature",
    Value = false,
    Callback = function(Value)
        _G.NOCLIP = Value
    end    
})

spawn(function()
    while wait() do
        if _G.NOCLIP then
            local player = game.Players.LocalPlayer
            pcall(function()
                if sethiddenproperty then
                    sethiddenproperty(player, "SimulationRadius", 100)
                end
                if setscriptable then
                    setscriptable(player, "SimulationRadius", true)
                    player.SimulationRadius = math.huge
                end
            end)
        end
    end
end)

local ToggleRemoveLava = SettingsTab:Toggle({
    Title = "Remove Lava",
    Desc = "Lava like water",
    Value = false,
    Callback = function(state)
        if state then
            for _, v in pairs(game.Workspace:GetDescendants()) do
                if v.Name == "Lava" then
                    v:Destroy()
                end
            end
            for _, v in pairs(game.ReplicatedStorage:GetDescendants()) do
                if v.Name == "Lava" then
                    v:Destroy()
                end
            end
        end
    end
})

local ToggleInfGeppo = SettingsTab:Toggle({
    Title = "Infinity Geppo",
    Desc = "Op Feature",
    Value = false,
    Callback = function(Value)
        getgenv().InfGeppo = Value
    end
})

spawn(function()
    while wait(0.1) do
        pcall(function()
            if getgenv().InfGeppo then
                local player = game:GetService("Players").LocalPlayer
                if player.Character and player.Character:FindFirstChild("Geppo") then
                    for _, v in next, getgc() do
                        if typeof(v) == "function" and pcall(function() return getfenv(v).script end) and getfenv(v).script == player.Character.Geppo then
                            for i2, v2 in next, getupvalues(v) do
                                if tostring(i2) == "9" then
                                    repeat
                                        wait(0.1)
                                        setupvalue(v, i2, 0)
                                    until not getgenv().InfGeppo or player.Character.Humanoid.Health <= 0
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)

-- FPS Boost button
local Button = MainTab:Button({
    Title = "Fps Boost",
    Desc = "Boost Up To 120fps!",
    Callback = function() 
         pcall(function()
             loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FPS-BOOSTER/main/FPSBooster.txt"))()
         end)
    end
})

-- Camera View slider (attached to MainTab)
local Slider = MainTab:Slider({
    Title = "Camera View",
    Step = 1,
    Value = {
        Min = 20,
        Max = 120,
        Default = 70,
    },
    Callback = function(value)
        pcall(function()
            game.Workspace.Camera.FieldOfView = value
        end)
    end
})

-- Speed & Jump sliders on SettingsTab
local SpeedSlider = SettingsTab:Slider({
    Title = "Speed | High Risk",
    Step = 1,
    Value = {
        Min = 1,
        Max = 120,
        Default = 26,
    },
    Callback = function(value)
        getgenv().WalkSpeedValue = value
        local Player = game:GetService("Players").LocalPlayer
        if Player.Character and Player.Character:FindFirstChild("Humanoid") then
            Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue
            Player.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
                if Player.Character and Player.Character:FindFirstChild("Humanoid") then
                    Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue
                end
            end)
        end
    end
})

local JumpSlider = SettingsTab:Slider({
    Title = "Jump Boost | High Risk",
    Step = 1,
    Value = {
        Min = 1,
        Max = 120,
        Default = 50,
    },
    Callback = function(value)
        getgenv().JumpValue = value
        local Player = game:GetService("Players").LocalPlayer
        if Player.Character and Player.Character:FindFirstChild("Humanoid") then
            Player.Character.Humanoid.JumpPower = getgenv().JumpValue
        end
    end
})

game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    character:WaitForChild("Humanoid")
    character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue or 26
    character.Humanoid.JumpPower = getgenv().JumpValue or 50
end)

-- End of merged script

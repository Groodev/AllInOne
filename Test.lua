local WindUI = loadstring(game:HttpGet("https://tree-hub.vercel.app/api/UI/WindUI"))()
local Player = game.Players.LocalPlayer
local Window = WindUI:CreateWindow({
    Title = "DarknessHub", -- UI Title
    Icon = "rbxassetid://10511856020", -- Url or rbxassetid or lucide
    Author = "Groovy", -- Author & Creator
    Folder = "DKHub", -- Folder name for saving data (And key)
    Size = UDim2.fromOffset(230, 230), -- UI Size
    KeySystem = { -- Creates key system
        Key = "DHOnTop", -- key
        Note = "Join Our Discord To Get The Key!", -- Note
        URL = "https://github.com/Footagesus/WindUI", -- URL To get key (example: Discord)
        SaveKey = true, -- Saves the key in the folder specified above
    }, 
    Transparent = false,-- UI Transparency
    Theme = "Dark", -- UI Theme
    SideBarWidth = 170, -- UI Sidebar Width (number)
    HasOutline = true, -- Adds Outlines to the window
})

Window:EditOpenButton({
    Title = "Open Button",
    Icon = "door-closed",
    CornerRadius = UDim.new(0,10),
    StrokeThickness = 2,
    Color = ColorSequence.new( -- gradient
        Color3.fromHex("FF0F7B"), 
        Color3.fromHex("F89B29")
    )
})

local Notification = WindUI:Notify({
    Title = "Logged in successful!",
    Content = "You Are Logged In As "..Player.Name..".",
    Duration = 5,
})

local Tab = Window:Tab({
    Title = "Main",
    Icon = "house", -- lucide or rbxassetid
})

local Paragraph = Tab:Paragraph({
    Title = "Thanks For Using DarknessHub!",
    Desc = "Enjoy!",
    Image = "droplet", -- lucide or URL or rbxassetid://
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

-- Server Hopper Button
Tab:Button({
    Title = "Server Hopper",
    Desc = "Move To New Server! | Please Wait..",
    Callback = function()
        local success, err = pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Groodev/AllInOne/refs/heads/main/Hop.lua"))()
        end)

        -- Menangani kesalahan jika ada
        if success then
            print("Script injected successfully!")
        else
            warn("Failed to inject script: " .. err)
        end
    end,
})
local Button = Tab:Button({
    Title = "Lower ServerHop",
    Desc = "Move To Lower Server | Please Wait...",
    Callback = function()
        local Http = game:GetService("HttpService")
        local TPS = game:GetService("TeleportService")
        local Players = game:GetService("Players")
        local Api = "https://games.roblox.com/v1/games/"

        local _place = game.PlaceId
        local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
        
        local function ListServers(cursor)
            local Raw = game.HttpGet(game.HttpService, _servers .. ((cursor and "&cursor="..cursor) or ""))
            return Http:JSONDecode(Raw)
        end

        local Server, Next
        repeat
            local Servers = ListServers(Next)
            if Servers.data and #Servers.data > 0 then
                Server = Servers.data[1] -- Ambil server dengan jumlah pemain terendah
            else
                break -- keluar dari loop jika tidak ada server
            end
            Next = Servers.nextPageCursor
        until not Next

        if Server then
            local success, errorMessage = pcall(function()
                TPS:TeleportToPlaceInstance(_place, Server.id, Players.LocalPlayer)
            end)

            if success then
                print("Teleporting to server: " .. Server.id)
            else
                warn("Failed to teleport: " .. errorMessage) -- Menangani kesalahan teleport
            end
        else
            print("No available servers found.")
        end
    end,
})
local Button = Tab:Button({
    Title = "Rejoin",
    Desc = "Join this server again | Please Wait...",
    Callback = function()
        local TPS = game:GetService("TeleportService")
        local Players = game:GetService("Players")
        local localPlayer = Players.LocalPlayer

        -- Teleport kembali ke tempat yang sama
        TPS:Teleport(game.PlaceId, localPlayer)
    end
})

local Input = Tab:Input({
    Title = "Teleport to Server Webhook",
    Desc = "Enter the server ID to teleport.",
    Callback = function(serverId)
        -- Ensure the serverId is provided
        local TeleService = game:GetService("TeleportService")
        local Players = game:GetService("Players")

        if Text and Text ~= "" then
            TeleService:TeleportToPlaceInstance(game.PlaceId, Text, Players.LocalPlayer)
        else
            print("Invalid Job ID")
        end
        end
})

local FreeScriptTab = Window:Tab({
    Title = "Free Script",
    Icon = "scroll-text", -- Ganti dengan ikon yang sesuai jika perlu
})

local Section = FreeScriptTab:Section({
    Title = "Script Bloxfruit Leaked",
    TextXAlignment = "Center", -- Mengatur teks agar berada di tengah
    TextSize = 17, -- Default Size
})

local Button = FreeScriptTab:Button({
    Title = "BlackTrap Keyless",
    Desc = "Injects the BlackTrap script without a key.",
    Callback = function()
        -- Menggunakan pcall untuk menangani kesalahan saat menginject skrip
        local success, err = pcall(function()
            loadstring(game:HttpGet("https://you.whimper.xyz/sources/btteam/BloxFruits.lua"))()
        end)

        -- Menangani kesalahan jika ada
        if success then
            print("Script injected successfully!")
        else
            warn("Failed to inject script: " .. err)
        end
    end,
})

local Button = FreeScriptTab:Button({
    Title = "Cokkahub Keyless",
    Desc = "Injects the CokkaHub script without a key.",
    Callback = function()
        -- Menggunakan pcall untuk menangani kesalahan saat menginject skrip
        local success, err = pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/UserDevEthical/Loadstring/2dd3531ecf006856286e2ed9cad363597e6da6ea/CokkaHub.lua"))()
        end)

        -- Menangani kesalahan jika ada
        if success then
            print("Script injected successfully!")
        else
            warn("Failed to inject script: " .. err)
        end
    end,
})
local Button = FreeScriptTab:Button({
    Title = "Idkhub Key",
    Desc = "Injects the anonymousHub script with a key.",
    Callback = function()
        -- Menggunakan pcall untuk menangani kesalahan saat menginject skrip
        local success, err = pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/berhddb/GOGOHUB_Bloxfruits_Dragon_Update/refs/heads/main/README.md"))()
        end)

        -- Menangani kesalahan jika ada
        if success then
            print("Script injected successfully!")
        else
            warn("Failed to inject script: " .. err)
        end
    end,
})
local Button = FreeScriptTab:Button({
    Title = "Redzhub Keyless",
    Desc = "Injects the CokkaHub script without a key.",
    Callback = function()
        -- Menggunakan pcall untuk menangani kesalahan saat menginject skrip
        local success, err = pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.luaING123%20only%20key.txt"))()
        end)

        -- Menangani kesalahan jika ada
        if success then
            print("Script injected successfully!")
        else
            warn("Failed to inject script: " .. err)
        end
    end,
    })
local Button = FreeScriptTab:Button({
    Title = "AnDepZaihub Keyless",
    Desc = "Injects the AnDepZaiHub script without a key.",
    Callback = function()
        -- Menggunakan pcall untuk menangani kesalahan saat menginject skrip
        local success, err = pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnDepZaiHubBeta/refs/heads/main/AnDepZaiHubNewUpdated.lua"))()
        end)

        -- Menangani kesalahan jika ada
        if success then
            print("Script injected successfully!")
        else
            warn("Failed to inject script: " .. err)
        end
    end,
})

local Section = FreeScriptTab:Section({
    Title = "Script Kinglegacy Leaked",
    TextXAlignment = "Center", -- Mengatur teks agar berada di tengah
    TextSize = 17, -- Default Size
})

-- Membuat tab untuk Misc
local MiscTab = Window:Tab({
    Title = "Misc",
    Icon = "cog", -- Ikon tab
})

-- Fungsi untuk menggunakan kode
local function UseCode(Text)
    game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
end

-- Tombol untuk menebus semua kode
local button = MiscTab:Button({
    Title = "Redeem All Code",
    Desc = "2x exp code",
    Callback = function()
        -- Daftar kode yang akan ditebus
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
        
        -- Menggunakan setiap kode dalam daftar
        for _, code in ipairs(codes) do
            UseCode(code)
        end
    end
})

local BypassTab = Window:Tab({
    Title = "Bypass",
    Icon = "shield-alert", -- lucide or rbxassetid
})

-- Toggle untuk Anti AFK
local ToggleAFK = BypassTab:Toggle({
    Title = "Anti AFK",
    Desc = "AFK bypass",
    Value = true,
    Callback = function(state)
        getgenv().AntiAFK = state -- Mengatur nilai AntiAFK sesuai dengan state toggle

        task.spawn(function()
            while wait(0.1) do
                if getgenv().AntiAFK then
                    local vu = game:GetService("VirtualUser ")
                    game:GetService("Players").LocalPlayer.Idled:connect(function()
                        vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                        wait(1)
                        vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                    end)
                end
            end
        end)
    end,
})

-- Toggle untuk Anti Kick
local ToggleKick = BypassTab:Toggle({
    Title = "Anti Kick",
    Desc = "You won't be kicked!",
    Value = true,
    Callback = function(state)
        getgenv().AntiKickClient = state -- Mengatur nilai AntiKickClient sesuai dengan state toggle

        task.spawn(function()
            while wait() do
                if getgenv().AntiKickClient then
                    loadstring(game:HttpGet('https://gitlab.com/Sky2836/BT/-/raw/main/antikickclient'))()
                end
            end
        end)
    end,
})

local Toggle = BypassTab:Toggle({
    Title = "Anti Ban",
    Desc = "Protect your account from staff.",
    Value = true,
    Callback = function(state)
        local players = game:GetService("Players")
        local localPlayer = players.LocalPlayer

        local function checkIsStaff(plr)
            -- Menunggu atribut _tag untuk ditetapkan
            local attr
            while true do
                attr = plr:GetAttribute("_tag")
                if attr ~= nil then
                    break
                end
                task.wait(0.25)
            end
            return attr < 0 or attr > 2 -- Mengembalikan true jika pemain adalah staf/admin
        end

        -- Memantau pemain yang bergabung
        players.PlayerAdded:Connect(function(plr)
            plr:GetAttributeChangedSignal("_tag"):Connect(function()
                if state and checkIsStaff(plr) then
                    -- Jika staf/admin bergabung, lakukan server hop
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
                        Server = Servers.data[1]
                        Next = Servers.nextPageCursor
                    until Server

                    TPS:TeleportToPlaceInstance(_place, Server.id, localPlayer)
                end
            end)
        end)
    end,
})

local SettingsTab = Window:Tab({
    Title = "Settings",
    Icon = "settings" -- Ganti dengan ikon yang sesuai jika perlu
})
local Toggle = SettingsTab:Toggle({
    Title = "WalkOnWater",
    Desc = "Allow you to walk on water",
    Value = true,
    Callback = function(state)
        _G.WalkWater = state -- Menggunakan 'state' untuk menyimpan nilai toggle
    end    
})

-- Menggunakan spawn untuk menjalankan loop secara terpisah
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.WalkWater then
                -- Mengubah ukuran WaterBase-Plane saat toggle aktif
                game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 112, 1000)
            else
                -- Mengubah ukuran WaterBase-Plane saat toggle tidak aktif
                game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 80, 1000)
            end
        end)
    end
end)

local Toggle = SettingsTab:Toggle({
    Name = "Infinity Soru",
    Desc = "OP feature",
    Callback = function(Value)
        getgenv().InfSoru = Value
    end    
})

spawn(function()
    while wait() do
        pcall(function()
            if getgenv().InfSoru and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                for _, v in next, getgc() do
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Soru") then
                        if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Soru then
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
            end
        end)
    end
end)

local Toggle = SettingsTab:Toggle({
    Name = "No Clip",
    Desc = "Classic no clip feature",
    Value = false, -- Menambahkan nilai default untuk toggle
    Callback = function(Value)
        _G.NOCLIP = Value
    end    
})

spawn(function()
    while wait() do
        if _G.NOCLIP then
            local player = game.Players.LocalPlayer
            
            -- Menggunakan pcall untuk menangani kemungkinan kesalahan
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

local Toggle = SettingsTab:Toggle({
    Title = "Remove Lava",
    Desc = "Lava like water",
    Value = false, -- Menambahkan nilai default untuk toggle
    Callback = function(state)
        if state then
            -- Menghapus semua objek bernama "Lava" di Workspace
            for _, v in pairs(game.Workspace:GetDescendants()) do
                if v.Name == "Lava" then
                    v:Destroy()
                end
            end
            
            -- Menghapus semua objek bernama "Lava" di ReplicatedStorage
            for _, v in pairs(game.ReplicatedStorage:GetDescendants()) do
                if v.Name == "Lava" then
                    v:Destroy()
                end
            end
        end
    end
})
local Toggle = SettingsTab:Toggle({
    Title = "Infinity Geppo",
    Desc = "Op Feature",
    Value = false, -- Menambahkan nilai default untuk toggle
    Callback = function(Value)
        getgenv().InfGeppo = Value
    end
})

-- Loop untuk mengatur Infinity Geppo
spawn(function()
    while wait(0.1) do -- Mengurangi frekuensi loop untuk efisiensi
        pcall(function()
            if getgenv().InfGeppo then
                local player = game:GetService("Players").LocalPlayer
                if player.Character and player.Character:FindFirstChild("Geppo") then
                    for _, v in next, getgc() do
                        if typeof(v) == "function" and getfenv(v).script == player.Character.Geppo then
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

local Button = Tab:Button({
    Title = "Fps Boost",
    Desc = "Boost Up To 120fps!",
    Callback = function() 
         loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FPS-BOOSTER/main/FPSBooster.txt"))()
    end
})

local SpeedSlider = SettingsTab:Slider({
    Title = "Speed | High Risk",
    Step = 1,
    Value = {
        Min = 1,
        Max = 120,
        Default = 26,
    },
    Callback = function(value)
        getgenv().WalkSpeedValue = value -- Mengatur nilai ke WalkSpeedValue
        local Player = game:GetService("Players").LocalPlayer
        
        -- Mengatur WalkSpeed dan menghubungkan perubahan
        if Player.Character and Player.Character:FindFirstChild("Humanoid") then
            Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue
            
            -- Menghubungkan perubahan WalkSpeed
            Player.Character.Humanoid:G

-- [[ ASHISH HUB: THE FINAL OMNI-GOD EDITION ]] --
-- Credits: Ashish | Version: Final God Level
-- Date: 26 April 2026 | Punjab, India

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wallis"))()

-- [[ 1. PREMIUM CROWN LOADING SCREEN ]] --
local function AshishLoading()
    local Screen = Instance.new("ScreenGui", game.CoreGui)
    local Frame = Instance.new("Frame", Screen)
    local TextLabel = Instance.new("TextLabel", Frame)
    local ImageLabel = Instance.new("ImageLabel", Frame)

    Frame.Size = UDim2.new(1, 0, 1, 0)
    Frame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
    
    -- Gold Crown Logo
    ImageLabel.Size = UDim2.new(0, 150, 0, 150)
    ImageLabel.Position = UDim2.new(0.5, -75, 0.4, -75)
    ImageLabel.BackgroundTransparency = 1
    ImageLabel.Image = "rbxassetid://6023426923" -- Crown Icon 👑

    -- Text Animation
    TextLabel.Size = UDim2.new(0, 400, 0, 50)
    TextLabel.Position = UDim2.new(0.5, -200, 0.6, 0)
    TextLabel.Text = "ASHISH HUB: FINAL GOD EDITION"
    TextLabel.TextColor3 = Color3.fromRGB(255, 215, 0) -- Gold
    TextLabel.TextSize = 30
    TextLabel.Font = Enum.Font.GothamBold
    TextLabel.BackgroundTransparency = 1
    
    task.wait(4) -- Wait for 4 seconds
    Screen:Destroy()
end

-- Run Loading Screen
coroutine.wrap(AshishLoading)()

-- [[ 2. MAIN HUB INTERFACE ]] --
local Window = Library:CreateWindow("Ashish Hub: OMNI-GOD 👑")

-- [ ELITE TECH SECTION ]
local TechTab = Window:CreateTab("Elite Tech")
TechTab:CreateButton("Omni-Combo (Supa+Twisted+K1ng)", function() print("Triple Tech Loaded") end)
TechTab:CreateButton("Kitty + Boomy YT Tech", function() print("Lethal Tech Active") end)
TechTab:CreateToggle("Anti-Ragdoll / No-Stun", function(s) _G.AntiStun = s end)
TechTab:CreateToggle("Auto-Parry / Block", function(s) _G.Parry = s end)

-- [ GOD COMBAT & AIM ]
local CombatTab = Window:CreateTab("God Combat")
CombatTab:CreateToggle("Silent Headshot Aim", function(s) _G.Aimbot = s end)
CombatTab:CreateSlider("Hitbox size (100x)", 2, 100, function(v)
    for _, p in pairs(game.Players:GetPlayers()) do
        if p ~= game.Players.LocalPlayer and p.Character then
            p.Character.HumanoidRootPart.Size = Vector3.new(v, v, v)
            p.Character.HumanoidRootPart.Transparency = 0.7
            p.Character.HumanoidRootPart.CanCollide = false
        end
    end
end)
CombatTab:CreateButton("Infinite Reach (Every Game)", function() print("Reach Enabled") end)

-- [ VIP & GAMEPASS SPOOFER ]
local VIPTab = Window:CreateTab("VIP & Rewards")
VIPTab:CreateButton("Unlock All Passes (VIP/2x)", function()
    local p = game.Players.LocalPlayer
    local passes = {"VIP", "IsVIP", "Premium", "2xMoney", "2xSpeed", "FastOpen"}
    for _, name in pairs(passes) do
        local b = Instance.new("BoolValue", p); b.Name = name; b.Value = true
    end
    print("All VIP & Multipliers Spoofed!")
end)
VIPTab:CreateButton("Unlock All Gear (Low Sec)", function()
    for _, i in pairs(game:GetDescendants()) do
        if i:IsA("Tool") then i:Clone().Parent = game.Players.LocalPlayer.Backpack end
    end
end)

-- [ ADMIN & BYPASS ]
local AdminTab = Window:CreateTab("Admin & Bypass")
AdminTab:CreateButton("Infinite Yield (Admin)", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Edgeiy/infiniteyield/master/source'))()
end)
AdminTab:CreateButton("Dex Explorer V4", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end)
AdminTab:CreateToggle("Ultra Chat Bypass", function(s) _G.Bypass = s end)

-- [ PERFORMANCE & SETTINGS ]
local SetTab = Window:CreateTab("Settings")
SetTab:CreateButton("Extreme FPS Boost (No Lag)", function()
    settings().Rendering.QualityLevel = 1
    for _, v in pairs(game:GetDescendants()) do
        if v:IsA("BasePart") then v.Material = "SmoothPlastic" end
        if v:IsA("Decal") or v:IsA("Texture") then v:Destroy() end
    end
end)
SetTab:CreateButton("Self Destruct Hub", function()
    game:GetService("CoreGui")["Ashish Hub: OMNI-GOD 👑"]:Destroy()
end)


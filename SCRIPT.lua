local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/LUNAAR-SALT/Exploit/main/Kavo-ui-mobile.lua"))()
local Window = Library.CreateLib("IOSPLOIT - IN DEVELOPMENT", "Private")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ScreenGui"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

local Toggle = Instance.new("TextButton")
Toggle.Name = "Toggle"
Toggle.Parent = ScreenGui
Toggle.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Toggle.Position = UDim2.new(0, 10, 0.9, -50)
Toggle.Size = UDim2.new(0, 120, 0, 50)
Toggle.Font = Enum.Font.SourceSans
Toggle.Text = "IOSPLOIT"
Toggle.TextColor3 = Color3.fromRGB(248, 248, 248)
Toggle.TextSize = 20
Toggle.AutoButtonColor = false

local Corner = Instance.new("UICorner")
Corner.Name = "Corner"
Corner.Parent = Toggle

local Hover = Instance.new("UIHover")
Hover.Parent = Toggle
Hover.MouseEnter:Connect(function()
    Toggle.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
end)
Hover.MouseLeave:Connect(function()
    Toggle.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
end)

Toggle.MouseButton1Click:Connect(function()
    Library:ToggleUI()
end)

--tabs
local Credits = Window:NewTab("CREDITS")
local A = Credits:NewSection("CREDITS - DEVELOPER, SCRIPT DEV")
local b = Credits:NewSection("HEAD DEV: luna_salt")
local c = Credits:NewSection("CO DEV:Chxrgr")
local d = Credits:NewSection("CREDITS TO ALL SCRIPT I USE!")

local info = Window:NewTab("info")
local info1 = info:NewSection("This info does not include your private info")
local Main= Window:NewTab("Main")
local Main2 = Main:NewSection("Main")

--info

local player = game.Players.LocalPlayer
local userInputService = game:GetService("UserInputService")
local platform = userInputService:GetPlatform()

local info1 = Section:NewLabel("Username: " .. player.Name)
local info1 = Section:NewLabel("Device: " .. platform)
local info1 = Section:NewLabel("Game: " .. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)
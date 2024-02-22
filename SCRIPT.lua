local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/LUNAAR-SALT/Exploit/main/Kavo-ui-mobile.lua"))()
local Window = Library.CreateLib("IOSPLOIT - IN DEVELOPMENT", "Private")

-- Create a ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "IOSPLOIT"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
screenGui.ResetOnSpawn = false

-- Create a TextButton for toggling the tutorial
local toggleButton = Instance.new("TextButton")
toggleButton.Name = "Toggle"
toggleButton.Parent = screenGui
toggleButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
toggleButton.Position = UDim2.new(0, 0, 0.454706937, 0)
toggleButton.Size = UDim2.new(0, 90, 0, 38)
toggleButton.Font = Enum.Font.SourceSans
toggleButton.Text = "IOSPLOIT"
toggleButton.TextColor3 = Color3.fromRGB(248, 248, 248)
toggleButton.TextSize = 28.000
toggleButton.Draggable = true

-- Add a corner to the toggle button
local corner = Instance.new("UICorner")
corner.Parent = toggleButton

-- Connect toggle functionality
toggleButton.MouseButton1Click:Connect(function()
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
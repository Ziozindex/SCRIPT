local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/LUNAAR-SALT/Exploit/main/Kavo-ui-mobile.lua"))()
local Window = Library.CreateLib("IOSPLOIT - IN DEVELOPMENT", "Private")

local MainToggle = Instance.new("ScreenGui")
local OpenCloseGUI = Instance.new("ScreenGui")
local OpenClose = Instance.new("TextButton")

OpenCloseGUI.Name = "OpenCloseGUI"
OpenCloseGUI.Parent = game.CoreGui

OpenClose.Name = "Open/Close"
OpenClose.Parent = OpenCloseGUI
OpenClose.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
OpenClose.BackgroundTransparency = 0.2
OpenClose.Position = UDim2.new(0.0109622413, 0, 0.0136186769, 0)
OpenClose.Size = UDim2.new(0, 100, 0, 100)
OpenClose.Font = Enum.Font.GothamBold -- Change the font to a more modern and bold font
OpenClose.Text = "IOSPLOIT"
OpenClose.TextColor3 = Color3.fromRGB(75, 0, 130)
OpenClose.TextSize = 26
OpenClose.MouseEnter:Connect(function()
    -- Add a hover effect when the user hovers over the button
    OpenClose.BackgroundColor3 =3 Color.fromRGB(75, 0, 130)
    OpenClose.TextColor3 = Color3.fromRGB(255, 255, 255)
end)
OpenClose.MouseLeave:Connect(function()
    -- Reset the button's appearance when the user stops hovering
    OpenClose.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
    OpenClose.TextColor3 = Color3.fromRGB(75, 0, 130)
end)
OpenClose.MouseButton1Click:Connect(function()
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
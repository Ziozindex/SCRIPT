local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/LUNAAR-SALT/Exploit/main/Kavo-ui-mobile.lua"))()
local Window = Library.CreateLib("IOSPLOIT - IN DEVELOPMENT", "DarkTheme")

local IOSPLOIT = Instance.new("ScreenGui") 
 local TextLabel = Instance.new("TextButton") 
 local UIGradient = Instance.new("UIGradient") 
 local UITextSizeConstraint = Instance.new("UITextSizeConstraint") 
  
 IOSPLOIT.Name = "IOSPLOIT" 
 IOSPLOIT.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui") 
 IOSPLOIT.ZIndexBehavior = Enum.ZIndexBehavior.Sibling 
 IOSPLOIT.ResetOnSpawn = false 
  
 TextLabel.Parent = IOSPLOIT 
 TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255) 
 TextLabel.BackgroundTransparency = 1.000 
 TextLabel.BorderSizePixel = 0 
 TextLabel.Position = UDim2.new(-0.000772226602, 0, 0.0343558267, 0) 
 TextLabel.Size = UDim2.new(0.170134634, 0, 0.0700389072, 0) 
 TextLabel.Font = Enum.Font.GothamBold 
 TextLabel.Text = "IOSPLOIT" 
 TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255) 
 TextLabel.TextScaled = true 
 TextLabel.TextSize = 28.000 
 TextLabel.TextWrapped = true 
 TextLabel.TextXAlignment = Enum.TextXAlignment.Left 
 TextLabel.MouseButton1Down:Connect(function() 
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
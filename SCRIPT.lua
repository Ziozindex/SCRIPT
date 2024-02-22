local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/LUNAAR-SALT/Exploit/main/Kavo-ui-mobile.lua"))()
local Window = Library.CreateLib("IOSPLOIT - IN DEVELOPMENT", "Private")

local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ScreenGui"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

local Toggle = Instance.new("TextButton")
Toggle.Name = "Toggle"
Toggle.Parent = ScreenGui
Toggle.BackgroundColor3 = Color3.fromRGB(50, 50, 50) -- Darker background color
Toggle.Position = UDim2.new(0, 0, 0.454706937, 0)
Toggle.Size = UDim2.new(0, 90, 0, 38)
Toggle.Font = Enum.Font.SourceSans
Toggle.Text = "Tutorial"
Toggle.TextColor3 = Color3.fromRGB(248, 248, 248)
Toggle.TextSize = 28.000
Toggle.ClipsDescendants = true -- Clip the content to prevent overflow
Toggle.AutoButtonColor = false -- Disable default button color change

local Corner = Instance.new("UICorner")
Corner.Name = "Corner"
Corner.CornerRadius = UDim.new(0, 8) -- Rounded corners
Corner.Parent = Toggle

local isDragging = false

local function dragButton(input)
    if isDragging then
        local delta = input.Position - input.StartPosition
        local newPosition = UDim2.new(
            UDim.new(Toggle.Position.X.Scale, Toggle.Position.X.Offset + delta.X),
            UDim.new(Toggle.Position.Y.Scale, Toggle.Position.Y.Offset + delta.Y)
        )
        
        -- Create a tween to smoothly animate the button's position
        local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        local tween = TweenService:Create(Toggle, tweenInfo, {Position = newPosition})
        tween:Play()
    end
end

Toggle.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        isDragging = true
    end
end)

Toggle.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        isDragging = false
    end
end)

Toggle.InputChanged:Connect(dragButton)

Toggle.MouseButton1Click:Connect(function()
    -- Add a sliding animation when clicked
    local endSize = UDim2.new(0, 110, 0, 38)
    local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local tween = TweenService:Create(Toggle, tweenInfo, {Size = endSize})
    tween:Play()
    
    -- Change background color when toggled
    if Toggle.BackgroundColor3 == Color3.fromRGB(50, 50, 50) then
        Toggle.BackgroundColor3 = Color3.fromRGB(0, 120, 215) -- New color when toggled on
    else
        Toggle.BackgroundColor3 = Color3.fromRGB(50, 50, 50) -- Revert to original color when toggled off
    end

    -- Call the Library:ToggleUI() function
    Library:ToggleUI()
end)

UserInputService.TouchMoved:Connect(dragButton)

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
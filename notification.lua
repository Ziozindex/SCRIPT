-- Create a function to display a notification with slide animation
local function showNotification(player, message)
    local Notification = Instance.new("ScreenGui")
    Notification.Parent = player.PlayerGui

    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(0, 200, 0, 60) -- Adjusted size to make it smaller
    Frame.Position = UDim2.new(1, -220, 1, -80) -- Adjusted position to bottom right corner with padding
    Frame.BackgroundColor3 = Color3.fromRGB(52, 152, 219) -- Adjusted color to a blue tone
    Frame.BorderSizePixel = 0
    Frame.Parent = Notification
    Frame.ClipsDescendants = true -- Clip descendants to Frame boundaries

    local TextLabel = Instance.new("TextLabel")
    TextLabel.Size = UDim2.new(1, 0, 1, 0)
    TextLabel.Position = UDim2.new(0, 10, 0, 0) -- Adjusted position to add padding
    TextLabel.Text = message
    TextLabel.TextScaled = true
    TextLabel.TextColor3 = Color3.new(1, 1, 1)
    TextLabel.BackgroundTransparency = 1
    TextLabel.Parent = Frame

    -- Apply round corners
    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0, 10)
    Corner.Parent = Frame

    -- Slide in animation
    Frame:TweenPosition(UDim2.new(1, -220, 1, -80), "Out", "Quad", 0.5, true) -- Slide animation to the original position
    wait(5) -- Display the notification for 5 seconds

    -- Slide out animation
    Frame:TweenPosition(UDim2.new(1, 20, 1, -80), "Out", "Quad", 0.5, true) -- Slide animation out of the screen

    -- Fade out animation
    Frame:TweenSizeAndPosition(
        UDim2.new(0, 0, 0, 0), -- New size
        UDim2.new(1, 20, 1, -80), -- New position
        "Out", -- Easing direction
        "Quad", -- Easing style
        0.5, -- Time
        true -- Tween completion enabled
    )

    -- Destroy the notification after animation
    wait(0.5)
    Notification:Destroy()
end

-- Example usage:
local player = game.Players.LocalPlayer -- Replace this with the player you want to show the notification to
local message = "Hello, this is a notification!"

showNotification(player, message)
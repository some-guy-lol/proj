local market = game:GetService("Players").LocalPlayer.PlrData:WaitForChild("MarketUses")




-- GUI ends at line 98
-- Version: 3.2

-- Instances:

local bmUseUi = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local Frame = Instance.new("ImageLabel")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local TextBox = Instance.new("TextBox")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local TextButton = Instance.new("TextButton")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")

--Properties:

bmUseUi.Name = "bmUseUi"
bmUseUi.Parent = game:GetService("CoreGui")

TextLabel.Parent = bmUseUi
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.088044025, 0, 0.949186981, 0)
TextLabel.Size = UDim2.new(0, 154, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "bmUses"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

UIAspectRatioConstraint.Parent = TextLabel
UIAspectRatioConstraint.AspectRatio = 3.080

UITextSizeConstraint.Parent = TextLabel
UITextSizeConstraint.MaxTextSize = 50

Frame.Name = "Frame"
Frame.Parent = bmUseUi
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0, 0, 0.898373961, 0)
Frame.Size = UDim2.new(0, 330, 0, 100)
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(0, 0, 0)
Frame.ImageTransparency = 0.350
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.120

UIAspectRatioConstraint_2.Parent = Frame
UIAspectRatioConstraint_2.AspectRatio = 3.300

TextBox.Parent = bmUseUi
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundTransparency = 1.000
TextBox.Position = UDim2.new(0, 0, 0.898373961, 0)
TextBox.Size = UDim2.new(0, 176, 0, 50)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "Plr Inv 2 Check"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

UIAspectRatioConstraint_3.Parent = TextBox
UIAspectRatioConstraint_3.AspectRatio = 3.520

UITextSizeConstraint_2.Parent = TextBox
UITextSizeConstraint_2.MaxTextSize = 34

TextButton.Parent = bmUseUi
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.Position = UDim2.new(0.0935467705, 0, 0.897601485, 0)
TextButton.Size = UDim2.new(0, 143, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Check Plr Inv"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

UIAspectRatioConstraint_4.Parent = TextButton
UIAspectRatioConstraint_4.AspectRatio = 2.860

UITextSizeConstraint_3.Parent = TextButton
UITextSizeConstraint_3.MaxTextSize = 32
local Notif = Instance.new("TextLabel")

--Properties:

Notif.Name = "Notif"
Notif.Parent = game:GetService("CoreGui").bmUseUi
Notif.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Notif.BackgroundTransparency = 0.350
Notif.Position = UDim2.new(0.41120559, 0, 0.365313649, 0)
Notif.Size = UDim2.new(0, 475, 0, 171)
Notif.Font = Enum.Font.SourceSans
Notif.Text = "plrItems"
Notif.TextColor3 = Color3.fromRGB(255, 255, 255)
Notif.TextScaled = true
Notif.TextSize = 14.000
Notif.TextWrapped = true
Notif.Visible = false

-- GUI End
local name2check = TextBox.Text
-- functions
local currentUses = nil
local function checkMarketUsesVal()
    currentUses = market.Value
end

while wait(5) do
    checkMarketUsesVal()
    game:GetService("CoreGui"):WaitForChild("bmUseUI").TextLabel.Text = 6-currentUses.."0 minutes left until the next BM use!"
end

TextButton.MouseButton1Down:Connect(function()
    local items = game.Players.name2check.Backpack:GetChildren()
    Notif.Text = tostring(items)
    Notif.Visible = true
    wait(5)
    Notif.Visible = false
end)

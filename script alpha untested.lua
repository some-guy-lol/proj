local market = game:GetService("Players").LocalPlayer.PlrData:WaitForChild("MarketUses")
local plr = game:GetService("Players").LocalPlayer
local coregui = game:GetService("CoreGui")
local bmuseui = coregui.bmUseUi
local checkInvButton = coregui.bmUseUi.Frame.TextButton
local textbox = bmuseui.Frame.TextBox
local notifLabel = bmuseui.Notif
local textboxEntry = textbox.Text



-- GUI Ends on line 126
-- Gui to Lua
-- Version: 3.2

-- Instances:

local bmUseUI = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local Frame = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local TextBox = Instance.new("TextBox")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local TextButton = Instance.new("TextButton")
local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local Notif = Instance.new("TextLabel")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")

--Properties:

bmUseUI.Name = "bmUseUI"
bmUseUI.Parent = game:GetService("CoreGui")
bmUseUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TextLabel.Parent = bmUseUI
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.404202104, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 368, 0, 92)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "bmUseTime"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

UIAspectRatioConstraint.Parent = TextLabel
UIAspectRatioConstraint.AspectRatio = 4.000

UITextSizeConstraint.Parent = TextLabel
UITextSizeConstraint.MaxTextSize = 91

Frame.Parent = bmUseUI
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.350
Frame.Position = UDim2.new(0, 0, 0.866869926, 0)
Frame.Size = UDim2.new(0, 321, 0, 131)

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Size = UDim2.new(0, 321, 0, 50)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Plr Inventory Checker"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

UITextSizeConstraint_2.Parent = TextLabel_2
UITextSizeConstraint_2.MaxTextSize = 43

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BackgroundTransparency = 1.000
TextBox.Position = UDim2.new(0, 0, 0.381679386, 0)
TextBox.Size = UDim2.new(0, 200, 0, 50)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "Player Name"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true
TextBox.ClearTextOnFocus = false

UITextSizeConstraint_3.Parent = TextBox
UITextSizeConstraint_3.MaxTextSize = 14

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.Position = UDim2.new(0.741433024, 0, 0.618320584, 0)
TextButton.Size = UDim2.new(0, 83, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Check"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

UITextSizeConstraint_4.Parent = TextButton
UITextSizeConstraint_4.MaxTextSize = 14

UIAspectRatioConstraint_2.Parent = Frame
UIAspectRatioConstraint_2.AspectRatio = 2.450

Notif.Name = "Notif"
Notif.Parent = bmUseUI
Notif.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Notif.BackgroundTransparency = 0.350
Notif.Position = UDim2.new(0, 0, 0.621951222, 0)
Notif.Size = UDim2.new(0, 200, 0, 50)
Notif.Visible = false
Notif.Font = Enum.Font.SourceSans
Notif.Text = "Plr has weapon(s)!"
Notif.TextColor3 = Color3.fromRGB(255, 255, 255)
Notif.TextScaled = true
Notif.TextSize = 14.000
Notif.TextWrapped = true

UIAspectRatioConstraint_3.Parent = Notif
UIAspectRatioConstraint_3.AspectRatio = 4.000

UITextSizeConstraint_5.Parent = Notif
UITextSizeConstraint_5.MaxTextSize = 14

-- GUI End

-- functions
local currentUses = nil
local function checkMarketUsesVal()
    currentUses = market.Value
end

while wait(5) do
    checkMarketUsesVal()
    game:GetService("CoreGui").ScreenGui.TextLabel.Text = 6-currentUses.."Up to 0 minutes left until the next BM use!"
end

checkInvButton.MouseButton1Down:Connect(function()
    local plr2Check = textboxEntry
    local found = game:GetService("Players"):FindFirstChild(textboxEntry)
    local backpack = found:WaitForChild("Backpack")
    if backpack:FindFirstChild("Ruger LCR .38") or backpack:FindFirstChild("M1911") or backpack:FindFirstChild("Colt .38 Special") or backpack:FindFirstChild("Taurus 856 .38") then
        if backpack:FindFirstChild("Switchblade") then
            notifLabel.Text = "Player has a switchblade!"
            notifLabel.Visible = true
            wait(3.5)
            notifLabel.Visible = false
            notifLabel.Text = "Plr has weapon(s)!"
        else
            notifLabel.Visible = true
            wait(3.5)
            notifLabel.Visible = false
        end
    end
end)

local market = game:GetService("Players").LocalPlayer.PlrData:WaitForChild("MarketUses")




-- GUI Ends on line 37
-- Instances:

local bmUseUI = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")

--Properties:

bmUseUI.Name = "bmUseUI"
bmUseUI.Parent = game:GetService("CoreGui")
bmUseUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TextLabel.Parent = bmUseUI
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.449724853, 0, 0.0233739596, 0)
TextLabel.Size = UDim2.new(0, 276, 0, 118)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "bmUses"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 100.000
TextLabel.TextWrapped = true

UIAspectRatioConstraint.Parent = TextLabel
UIAspectRatioConstraint.AspectRatio = 2.339

UITextSizeConstraint.Parent = TextLabel

-- GUI End

-- functions
local currentUses = nil
local function checkMarketUsesVal()
    currentUses = market.Value
end

while wait(5) do
    checkMarketUsesVal()
    game:GetService("CoreGui"):WaitForChild("bmUseUI").TextLabel.Text = 6-currentUses.."0 minutes left until the next BM use!"
end

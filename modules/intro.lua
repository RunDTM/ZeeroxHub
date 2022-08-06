local Intro = Instance.new("ScreenGui")
local CenterPoint = Instance.new("Frame")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local UICorner = Instance.new("UICorner")
local UIStroke = Instance.new('UIStroke')
Intro.Name = "Intro"
Intro.Parent = game:GetService('CoreGui')
Intro.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
CenterPoint.Name = "CenterPoint"
CenterPoint.Parent = Intro
CenterPoint.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CenterPoint.BackgroundTransparency = 1.000
CenterPoint.Position = UDim2.new(0.5, 0, 0.5, 0)
CenterPoint.Size = UDim2.new(0, 1, 0, 1)
Frame.Parent = CenterPoint
Frame.BackgroundColor3 = Color3.fromRGB(31, 30, 30)
Frame.Position = UDim2.new(-50, 0, -50, 0)
Frame.Size = UDim2.new(0, 100, 0, 100)
Frame.Visible = false
Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.0700000003, 0, 0, 0)
Title.Size = UDim2.new(0.860000014, 0, 1, 0)
Title.Font = Enum.Font.Nunito
Title.Text = "Zeerox Hub"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Title.TextWrapped = true
UIAspectRatioConstraint.Parent = Title
UIAspectRatioConstraint.AspectRatio = 0.860
UICorner.Parent = Frame
UICorner.CornerRadius = UDim.new(0, 8)
UIStroke.Parent = Frame
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Color = Color3.fromRGB(200, 200, 200)
UIStroke.LineJoinMode = Enum.LineJoinMode.Round
UIStroke.Thickness = 1
local point = Intro.CenterPoint
local frame = point.Frame
local title = frame.Title
local framepos = frame.Position
local framesize = frame.Size
local zu = UDim2.new(0, 0, 0, 0)
frame.Position = zu
frame.Size = zu
wait(.5)
frame.Visible = true
frame:TweenSizeAndPosition(framesize, framepos, Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.5)
wait(3)
frame:TweenSizeAndPosition(zu, zu, Enum.EasingDirection.In, Enum.EasingStyle.Linear, 0.5)
wait(.5)
Intro:Destroy()

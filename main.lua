local CartControl = Instance.new("ScreenGui")
local Titlebar = Instance.new("Frame")
local MainFrame = Instance.new("Frame")
local DownButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
local UpButton = Instance.new("ImageButton")
local UICorner_2 = Instance.new("UICorner")
local StartButton = Instance.new("TextButton")
local StopButton = Instance.new("TextButton")
local DownBG2 = Instance.new("Frame")
local UpBG2 = Instance.new("Frame")
local UpBG = Instance.new("Frame")
local DownBG = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local UsernameTextBox = Instance.new("TextBox")
local UICorner_4 = Instance.new("UICorner")
local UICorner_5 = Instance.new("UICorner")
local TItlebarBlock = Instance.new("Frame")
local UsernameBlock = Instance.new("Frame")
local UsernameBlock2 = Instance.new("Frame")
local UserInputService = game:GetService("UserInputService")
local dragging
local dragInput
local dragStart
local startPos

CartControl.Name = "CartControl"
CartControl.Parent = game.CoreGui
CartControl.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
CartControl.ResetOnSpawn = false

Titlebar.Name = "Titlebar"
Titlebar.Parent = CartControl
Titlebar.BackgroundColor3 = Color3.fromRGB(27, 42, 53)
Titlebar.Position = UDim2.new(0, 0, 0, 0)
Titlebar.Size = UDim2.new(0, 400, 0, 30)

MainFrame.Name = "MainFrame"
MainFrame.Parent = Titlebar
MainFrame.Transparency = 1
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(5.96046448e-08, 0, 0.979998589, 0)
MainFrame.Size = UDim2.new(0, 400, 0, 100)

DownButton.Name = "DownButton"
DownButton.Parent = MainFrame
DownButton.BackgroundColor3 = Color3.fromRGB(210, 213, 214)
DownButton.BorderSizePixel = 0
DownButton.Position = UDim2.new(0, 0, 0, 1)
DownButton.Size = UDim2.new(0, 100, 0, 100)
DownButton.AutoButtonColor = false
DownButton.Image = "http://www.roblox.com/asset/?id=12289601840"

UICorner.Parent = DownButton

UpButton.Name = "UpButton"
UpButton.Parent = MainFrame
UpButton.BackgroundColor3 = Color3.fromRGB(210, 213, 214)
UpButton.BorderSizePixel = 0
UpButton.Position = UDim2.new(0.75, 0, 0, 1)
UpButton.Size = UDim2.new(0, 100, 0, 100)
UpButton.AutoButtonColor = false
UpButton.Image = "http://www.roblox.com/asset/?id=2008919"

UICorner_2.Parent = UpButton

StartButton.Name = "StartButton"
StartButton.Parent = MainFrame
StartButton.BackgroundColor3 = Color3.fromRGB(60, 185, 112)
StartButton.BorderSizePixel = 0
StartButton.Position = UDim2.new(0.249999985, 0, 0.01, 0)
StartButton.Size = UDim2.new(0, 200, 0, 50)
StartButton.Font = Enum.Font.SourceSans
StartButton.Text = " "
StartButton.TextColor3 = Color3.fromRGB(0, 0, 0)
StartButton.TextSize = 14.000

StopButton.Name = "StopButton"
StopButton.Parent = MainFrame
StopButton.BackgroundColor3 = Color3.fromRGB(227, 51, 38)
StopButton.BorderSizePixel = 0
StopButton.Position = UDim2.new(0.25, 0, 0.50999999, 0)
StopButton.Size = UDim2.new(0, 200, 0, 50)
StopButton.Font = Enum.Font.SourceSans
StopButton.Text = " "
StopButton.TextColor3 = Color3.fromRGB(0, 0, 0)
StopButton.TextSize = 14.000

DownBG2.Name = "DownBG2"
DownBG2.Parent = MainFrame
DownBG2.BackgroundColor3 = Color3.fromRGB(210, 213, 214)
DownBG2.BorderSizePixel = 0
DownBG2.Position = UDim2.new(0.202999994, 0, 0.00999999978, 0)
DownBG2.Size = UDim2.new(0, 19, 0, 100)
DownBG2.ZIndex = -5

UpBG2.Name = "UpBG2"
UpBG2.Parent = MainFrame
UpBG2.BackgroundColor3 = Color3.fromRGB(210, 213, 214)
UpBG2.BorderSizePixel = 0
UpBG2.Position = UDim2.new(0.75, 0, 0.00999999978, 0)
UpBG2.Size = UDim2.new(0, 12, 0, 100)
UpBG2.ZIndex = -5

UpBG.Name = "UpBG"
UpBG.Parent = MainFrame
UpBG.BackgroundColor3 = Color3.fromRGB(210, 213, 214)
UpBG.BorderSizePixel = 0
UpBG.Position = UDim2.new(0.75, 0, 0.00999999978, 0)
UpBG.Size = UDim2.new(0, 100, 0, 83)
UpBG.ZIndex = -5

DownBG.Name = "DownBG"
DownBG.Parent = MainFrame
DownBG.BackgroundColor3 = Color3.fromRGB(210, 213, 214)
DownBG.BorderSizePixel = 0
DownBG.Position = UDim2.new(0, 0, 0.00999999978, 0)
DownBG.Size = UDim2.new(0, 100, 0, 82)
DownBG.ZIndex = -5

UICorner_3.Parent = Titlebar

Title.Name = "Title"
Title.Parent = Titlebar
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Size = UDim2.new(0, 200, 0, 30)
Title.Font = Enum.Font.SourceSans
Title.Text = "Cart ConTroll UI"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 17.000

UsernameTextBox.Name = "UsernameTextBox"
UsernameTextBox.Parent = Titlebar
UsernameTextBox.BackgroundColor3 = Color3.fromRGB(32, 50, 63)
UsernameTextBox.BorderColor3 = Color3.fromRGB(27, 42, 53)
UsernameTextBox.BorderSizePixel = 0
UsernameTextBox.Position = UDim2.new(0, 200, 0, 0)
UsernameTextBox.Size = UDim2.new(0, 200, 0, 30)
UsernameTextBox.Font = Enum.Font.SourceSans
UsernameTextBox.PlaceholderColor3 = Color3.fromRGB(153, 153, 153)
UsernameTextBox.PlaceholderText = "Username..."
UsernameTextBox.Text = ""
UsernameTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
UsernameTextBox.TextSize = 17.000
UsernameTextBox.TextWrapped = true

UICorner_4.Parent = UsernameTextBox

UICorner_5.Parent = UsernameTextBox

TItlebarBlock.Name = "TItlebarBlock"
TItlebarBlock.Parent = Titlebar
TItlebarBlock.BackgroundColor3 = Color3.fromRGB(27, 42, 53)
TItlebarBlock.BorderSizePixel = 0
TItlebarBlock.Position = UDim2.new(0, 0, 0.77, 0)
TItlebarBlock.Size = UDim2.new(0, 200, 0, 7)
TItlebarBlock.ZIndex = -5

UsernameBlock.Name = "UsernameBlock"
UsernameBlock.Parent = Titlebar
UsernameBlock.BackgroundColor3 = Color3.fromRGB(32, 50, 63)
UsernameBlock.BorderSizePixel = 0
UsernameBlock.Position = UDim2.new(0.5, 0, 0.77, 0)
UsernameBlock.Size = UDim2.new(0, 200, 0, 7)
UsernameBlock.ZIndex = -5

UsernameBlock2.Name = "UsernameBlock2"
UsernameBlock2.Parent = Titlebar
UsernameBlock2.BackgroundColor3 = Color3.fromRGB(32, 50, 63)
UsernameBlock2.BorderSizePixel = 0
UsernameBlock2.Position = UDim2.new(0.5, 0, 0, 0)
UsernameBlock2.Size = UDim2.new(0, 122, 0, 29)
UsernameBlock2.ZIndex = -5

local function update(input)
	local delta = input.Position - dragStart
	Titlebar.Position = Titlebar:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y), 'Out', 'Linear', 0, true);
end


Titlebar.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = Titlebar.Position
		
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

Titlebar.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)

DownButton.MouseButton1Down:connect(function()
    if UsernameTextBox.Text == "" then
        for _,v in pairs(getgenv().cartsettings.cartsfolder:GetDescendants()) do
            if v.Name == getgenv().cartsettings.downbuttonname then
                for _,w in pairs(v:GetDescendants()) do
                    if w:IsA("ClickDetector") then
                        fireclickdetector(w)
                    end
                end
            end
        end
    else
        local seat = getgenv().username.Character:FindFirstChildOfClass('Humanoid').SeatPart
        local vehicleModel = seat:FindFirstAncestorWhichIsA("Model")
        for _,v in pairs(vehicleModel:GetDescendants()) do
            if v.Name == getgenv().cartsettings.downbuttonname then
                for _,w in pairs(v:GetDescendants()) do
                    if w:IsA("ClickDetector") then
                        fireclickdetector(w)
                    end
                end
            end
        end
    end
    DownButton.BackgroundColor3 = Color3.fromRGB(227, 51, 38)
    DownBG.BackgroundColor3 = Color3.fromRGB(227, 51, 38)
    DownBG2.BackgroundColor3 = Color3.fromRGB(227, 51, 38)
    task.wait(0.2)
    DownButton.BackgroundColor3 = Color3.fromRGB(210, 213, 214)
    DownBG.BackgroundColor3 = Color3.fromRGB(210, 213, 214)
    DownBG2.BackgroundColor3 = Color3.fromRGB(210, 213, 214)
end)

UpButton.MouseButton1Down:connect(function()
    if UsernameTextBox.Text == "" then
        for _,v in pairs(getgenv().cartsettings.cartsfolder:GetDescendants()) do
            if v.Name == getgenv().cartsettings.upbuttonname then
                for _,w in pairs(v:GetDescendants()) do
                    if w:IsA("ClickDetector") then
                        fireclickdetector(w)
                    end
                end
            end
        end
    else
        local seat = getgenv().username.Character:FindFirstChildOfClass('Humanoid').SeatPart
        local vehicleModel = seat:FindFirstAncestorWhichIsA("Model")
        for _,v in pairs(vehicleModel:GetDescendants()) do
            if v.Name == getgenv().cartsettings.upbuttonname then
                for _,w in pairs(v:GetDescendants()) do
                    if w:IsA("ClickDetector") then
                        fireclickdetector(w)
                    end
                end
            end
        end
    end
    UpButton.BackgroundColor3 = Color3.fromRGB(227, 51, 38)
    UpBG.BackgroundColor3 = Color3.fromRGB(227, 51, 38)
    UpBG2.BackgroundColor3 = Color3.fromRGB(227, 51, 38)
    task.wait(0.2)
    UpButton.BackgroundColor3 = Color3.fromRGB(210, 213, 214)
    UpBG.BackgroundColor3 = Color3.fromRGB(210, 213, 214)
    UpBG2.BackgroundColor3 = Color3.fromRGB(210, 213, 214)
end)

StartButton.MouseButton1Down:connect(function()
    if UsernameTextBox.Text == "" then
        for _,v in pairs(getgenv().cartsettings.cartsfolder:GetDescendants()) do
            if v.Name == getgenv().cartsettings.onbuttonname then
                if v.Color == getgenv().cartsettings.offcolor then
                    for _,w in pairs(v:GetDescendants()) do
                        if w:IsA("ClickDetector") then
                            fireclickdetector(w)
                        end
                    end
                end
            end
        end
    else
        local seat = getgenv().username.Character:FindFirstChildOfClass('Humanoid').SeatPart
        local vehicleModel = seat:FindFirstAncestorWhichIsA("Model")
        for _,v in pairs(vehicleModel:GetDescendants()) do
            if v.Name == getgenv().cartsettings.onbuttonname then
                if v.Color == getgenv().cartsettings.offcolor then
                    for _,w in pairs(v:GetDescendants()) do
                        if w:IsA("ClickDetector") then
                            fireclickdetector(w)
                        end
                    end
                end
            end
        end
    end
end)

StopButton.MouseButton1Down:connect(function()
    if UsernameTextBox.Text == "" then
        for _,v in pairs(getgenv().cartsettings.cartsfolder:GetDescendants()) do
            if v.Name == getgenv().cartsettings.onbuttonname then
                if v.Color == getgenv().cartsettings.oncolor then
                    for _,w in pairs(v:GetDescendants()) do
                        if w:IsA("ClickDetector") then
                            fireclickdetector(w)
                        end
                    end
                end
            end
        end
    else
        local seat = getgenv().username.Character:FindFirstChildOfClass('Humanoid').SeatPart
        local vehicleModel = seat:FindFirstAncestorWhichIsA("Model")
        for _,v in pairs(vehicleModel:GetDescendants()) do
            if v.Name == getgenv().cartsettings.onbuttonname then
                if v.Color == getgenv().cartsettings.oncolor then
                    for _,w in pairs(v:GetDescendants()) do
                        if w:IsA("ClickDetector") then
                            fireclickdetector(w)
                        end
                    end
                end
            end
        end
    end
end)

UsernameTextBox.FocusLost:connect(function()
    local characters = string.lower(UsernameTextBox.Text) -- Choose
    for _,player in pairs(game.Players:GetChildren()) do
     local PlrName = string.lower(player.Name)
       if string.sub(PlrName,1,#characters) == characters then
           getgenv().username = player
      end
   end
end)

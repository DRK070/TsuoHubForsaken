local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "UpdateNotice"
screenGui.ResetOnSpawn = false
screenGui.Parent = PlayerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(1, 0, 1, 0)
frame.Position = UDim2.new(0, 0, 0, 0)
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.BackgroundTransparency = 0.3
frame.Parent = screenGui

local label = Instance.new("TextLabel")
label.Size = UDim2.new(0.9, 0, 0.3, 0)
label.Position = UDim2.new(0.05, 0, 0.35, 0)
label.BackgroundTransparency = 1
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.Font = Enum.Font.Antique
label.TextScaled = true
label.TextWrapped = true
label.Text = "SCRIPT EM ATUALIZAÇÃO!\nACESSE: discord.gg/tsuo PARA NOVIDADES"
label.Parent = frame

local TweenService = game:GetService("TweenService")
local tweenInfo = TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, -1, true)
local tween = TweenService:Create(frame, tweenInfo, {BackgroundTransparency = 0.6})
tween:Play()
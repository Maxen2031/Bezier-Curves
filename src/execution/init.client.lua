

local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local camera = Workspace.CurrentCamera

local b = require(ReplicatedStorage:WaitForChild("Bezier"))

task.wait(5)

local goalCFrame = camera.CFrame * CFrame.new(10, 0, 0)

camera.CameraType = Enum.CameraType.Scriptable

b:CubicBezierCurve(camera, goalCFrame, 
    CFrame.new(0, 0, 20),
    CFrame.new(0, 0, 20)
)
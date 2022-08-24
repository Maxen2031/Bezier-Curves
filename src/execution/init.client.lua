

local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local camera = Workspace.CurrentCamera

local b = require(ReplicatedStorage:WaitForChild("Bezier"))

task.wait(5)

local goalCFrame = camera.CFrame * CFrame.new(30, 0, 0)
local goalOrientation = CFrame.Angles(0, math.rad(-90), 0)

camera.CameraType = Enum.CameraType.Scriptable

b:CubicBezierCurve(camera, goalCFrame, goalOrientation,
    CFrame.new(0, 0, 15),
    CFrame.new(0, 0, 15)
)
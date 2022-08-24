

local bezier = {}

function bezier:CubicBezierCurve(camera, goal)
    local p0 = camera.CFrame
    local p1 = camera.CFrame * CFrame.new(10, 0, 0)
    local p2 = goal.CFrame * CFrame.new(10, 0, 0)
    local p3 = goal

    local A = p0
    local B = p1
    local C = p2
    local D = A
    local E = B
    local P = D
    
    for i = 1, 100 do
        
    end
end

return bezier
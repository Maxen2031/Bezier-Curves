

local bezier = {}

function bezier:CubicBezierCurve(camera, start, goal)
    local p0 = camera.CFrame
    local p1 = camera.CFrame * CFrame.new(10, 0, 0)
    local p2 = goal.CFrame * CFrame.new(10, 0, 0)
    local p3 = goal

    for i = 1, 100 do
        --local p1 = 
    end
end

return bezier
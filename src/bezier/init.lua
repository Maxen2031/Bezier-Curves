

local bezier = {}

function bezier:CubicBezierCurve(camera, goal)
    local p0 = camera.CFrame
    local p1 = camera.CFrame * CFrame.new(10, 0, 0)
    local p2 = goal.CFrame * CFrame.new(10, 0, 0)
    local p3 = goal

    local A = nil
    local B = nil
    local C = nil
    local D = nil
    local E = nil

    local cframes = {
        {value = nil; goal = p0; }
    }

    for i = 1, 100 do
        CFrame CFrame:lerp()
    end
end

return bezier


local bezier = {}

function bezier:CubicBezierCurve(object, goal)
    local p0 = object.CFrame
    local p1 = object.CFrame * CFrame.new(10, 0, 0)
    local p2 = goal.CFrame * CFrame.new(10, 0, 0)
    local p3 = goal

    local A = p0
    local B = p1
    local C = p2
    local D = A
    local E = B

    for i = 0, 1, 0.01 do
        A = A:lerp(p1, i);
        B = B:lerp(p2, i);
        C = C:lerp(p3, i);
        D = D:lerp(B, i);
        E = E:lerp(C, i);
        
        object.CFrame = object.CFrame:lerp(E, i)
    end
end

return bezier
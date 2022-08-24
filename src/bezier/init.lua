

local bezier = {}

function bezier:CubicBezierCurve(object, goal, offset1, offset2)
    local p0 = object.CFrame
    local p1 = object.CFrame * offset1
    local p2 = goal * offset2
    local p3 = goal

    local A = p0
    local B = p1
    local C = p2
    local D = A
    local E = B

    for i = 0, 1, 0.001 do
        A = A:lerp(p1, i);
        B = B:lerp(p2, i);
        C = C:lerp(p3, i);
        D = D:lerp(B, i);
        E = E:lerp(C, i);
        
        object.CFrame = object.CFrame:lerp(E, i)

        task.wait()
    end
end

return bezier
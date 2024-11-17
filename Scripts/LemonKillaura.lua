local auraPart = script.Parent  
local detectionRadius = 30  
local function killInRange()
    for _, obj in pairs(workspace:GetChildren()) do
        if obj:IsA("Model") and obj:FindFirstChild("Humanoid") then
            local humanoid = obj:FindFirstChild("Humanoid")
            local characterPosition = obj.HumanoidRootPart.Position  
            local distance = (auraPart.Position - characterPosition).Magnitude
            if distance <= detectionRadius then
                humanoid.Health = 0
            end
        end
    end
end

while true do
    killInRange()
    wait(1)  -- Kiểm tra mỗi giây
end

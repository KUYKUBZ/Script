local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local Plr = Players.LocalPlayer

local info = TweenInfo.new(
    35,
    Enum.EasingStyle.Linear,
    Enum.EasingDirection.Out,
    0,
    false,
    0
)

local function CheckOwner(objects)
    local result = false
    pcall(function()
        if objects and objects:GetAttribute("Owner") == Plr.Name then
            result = true
        end
    end)
    return result
end

local function GetMyCar()
    local foundCar = nil
    pcall(function()
        local vehicles = workspace:WaitForChild("Vehicles", 5)
        if vehicles then
            for _, car in pairs(vehicles:GetChildren()) do
                if CheckOwner(car) then
                    foundCar = car
                    break
                end
            end
        end
    end)
    return foundCar
end

while true do
    local myCar = GetMyCar()

    if myCar then
        local startCFrame = CFrame.new(-1994, 1, 4995)
        local targetCFrame = CFrame.new(-3081, 1, -1869)
        
        myCar:PivotTo(startCFrame)
        task.wait(0.1)
        
        local cframeValue = Instance.new("CFrameValue")
        cframeValue.Value = startCFrame
        
        local connection
        connection = cframeValue.Changed:Connect(function(newCFrame)
            if myCar and myCar.Parent then
                myCar:PivotTo(newCFrame)
            else
                connection:Disconnect()
            end
        end)
        
        local tween = TweenService:Create(cframeValue, info, {Value = targetCFrame})
        tween:Play()
        
        tween.Completed:Wait()
        
        connection:Disconnect()
        cframeValue:Destroy()
    end
    
    task.wait(2)
  
end

setfpscap(15)
local TweenService = game:GetService("TweenService")local Players = game:GetService("Players")
local Plr = Players.LocalPlayer

local VirtualUser = game:GetService("VirtualUser")

local functions = getgc(true)
local bypassedCount = 0

for _, value in pairs(functions) do
    if type(value) == "function" then
        local info = debug.getinfo(value)
        if info and info.name then
            local funcName = string.lower(info.name)
            if string.find(funcName, "protocol") or string.find(funcName, "band") or string.find(funcName, "ban") then
                pcall(function()
                    hookfunction(value, function(...) 
                        return nil 
                    end)
                    bypassedCount = bypassedCount + 1
                end)
            end
        end
    end
end

print(tostring(bypassedCount))

spawn(function()
  Plr.Idled:Connect(function()
    pcall(function()
      VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
      task.wait(0.5)
      VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end)
  end)
end)

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
        local startCFrame = CFrame.new(-4600, 2, 1322)
        local targetCFrame = CFrame.new(-2272, 2, 4654)
        local dis = (startCFrame.Position - targetCFrame.Position).Magnitude
        
        local info = TweenInfo.new(
          dis/40,
          Enum.EasingStyle.Linear,
          Enum.EasingDirection.Out,
          0,
          false,
          0
        )
        
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

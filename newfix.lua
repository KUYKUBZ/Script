--[[
getgenv().abc = {
  ["AutoFarm"] = true,
  ["Price"] = 17000,
  ["AutoBuyGarage"] = true,
  ["Codes"] = {
    "100M",
    "SAUSAGE",
    "WATERLAVA",
    "RENASCAPTURADO",
    "UPDATEPLS"
  }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/KUYKUBZ/Script/refs/heads/main/newfix.lua"))()
]]
setfpscap(10)

if not game:IsLoaded() then
    game.Loaded:Wait()
end

local LMG2L = {}; 

LMG2L["ScreenGui_1"] = Instance.new("ScreenGui", gethui());
LMG2L["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

LMG2L["Frame_2"] = Instance.new("Frame", LMG2L["ScreenGui_1"]);
LMG2L["Frame_2"]["BorderSizePixel"] = 0;
LMG2L["Frame_2"]["BackgroundColor3"] = Color3.fromRGB(55, 55, 55);
LMG2L["Frame_2"]["Size"] = UDim2.new(0.32169, 0, 0.49652, 0);
LMG2L["Frame_2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
LMG2L["Frame_2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

LMG2L["UICorner_3"] = Instance.new("UICorner", LMG2L["Frame_2"]);

LMG2L["Frame_4"] = Instance.new("Frame", LMG2L["Frame_2"]);
LMG2L["Frame_4"]["BorderSizePixel"] = 0;
LMG2L["Frame_4"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28);
LMG2L["Frame_4"]["Size"] = UDim2.new(0.93333, 0, 0.9, 0);
LMG2L["Frame_4"]["Position"] = UDim2.new(0.03333, 0, 0.05, 0);

LMG2L["UICorner_5"] = Instance.new("UICorner", LMG2L["Frame_4"]);

LMG2L["ScrollingFrame_6"] = Instance.new("ScrollingFrame", LMG2L["Frame_4"]);
LMG2L["ScrollingFrame_6"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
LMG2L["ScrollingFrame_6"]["ZIndex"] = 1;
LMG2L["ScrollingFrame_6"]["BorderSizePixel"] = 0;
LMG2L["ScrollingFrame_6"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28);
LMG2L["ScrollingFrame_6"]["Selectable"] = false;
LMG2L["ScrollingFrame_6"]["Size"] = UDim2.new(0.95, 0, 0.9, 0);
LMG2L["ScrollingFrame_6"]["Position"] = UDim2.new(0.025, 0, 0.05, 0);
LMG2L["ScrollingFrame_6"]["ScrollBarThickness"] = 0;

LMG2L["UIListLayout_7"] = Instance.new("UIListLayout", LMG2L["ScrollingFrame_6"]);
LMG2L["UIListLayout_7"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
LMG2L["UIListLayout_7"]["Padding"] = UDim.new(0, 5);

LMG2L["Name_9"] = Instance.new("TextLabel", LMG2L["ScrollingFrame_6"]);
LMG2L["Name_9"]["TextWrapped"] = true;
LMG2L["Name_9"]["BorderSizePixel"] = 0;
LMG2L["Name_9"]["TextScaled"] = true;
LMG2L["Name_9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["Name_9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["Name_9"]["BackgroundTransparency"] = 1;
LMG2L["Name_9"]["Size"] = UDim2.new(1, 0, 0, 45); 
LMG2L["Name_9"]["Text"] = game.Players.LocalPlayer.Name; 
LMG2L["Name_9"]["Name"] = [[Name]];
LMG2L["Name_9"]["LayoutOrder"] = 1;

LMG2L["Name_8"] = Instance.new("TextLabel", LMG2L["ScrollingFrame_6"]);
LMG2L["Name_8"]["TextWrapped"] = true;
LMG2L["Name_8"]["BorderSizePixel"] = 0;
LMG2L["Name_8"]["TextScaled"] = true;
LMG2L["Name_8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["Name_8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["Name_8"]["BackgroundTransparency"] = 1;
LMG2L["Name_8"]["Size"] = UDim2.new(1, 0, 0, 45);
LMG2L["Name_8"]["Text"] = [[Money : waiting...]];
LMG2L["Name_8"]["Name"] = [[Cash]];
LMG2L["Name_8"]["LayoutOrder"] = 2;

LMG2L["Sold_a"] = Instance.new("TextLabel", LMG2L["ScrollingFrame_6"]);
LMG2L["Sold_a"]["TextWrapped"] = true;
LMG2L["Sold_a"]["BorderSizePixel"] = 0;
LMG2L["Sold_a"]["TextScaled"] = true;
LMG2L["Sold_a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["Sold_a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["Sold_a"]["BackgroundTransparency"] = 1;
LMG2L["Sold_a"]["Size"] = UDim2.new(1, 0, 0, 45);
LMG2L["Sold_a"]["Text"] = [[Sold : waiting...]];
LMG2L["Sold_a"]["Name"] = [[Sold]];
LMG2L["Sold_a"]["LayoutOrder"] = 3;

LMG2L["Age"] = Instance.new("TextLabel", LMG2L["ScrollingFrame_6"]);
LMG2L["Age"]["TextWrapped"] = true;
LMG2L["Age"]["BorderSizePixel"] = 0;
LMG2L["Age"]["TextScaled"] = true;
LMG2L["Age"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["Age"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["Age"]["BackgroundTransparency"] = 1;
LMG2L["Age"]["Size"] = UDim2.new(1, 0, 0, 45);
LMG2L["Age"]["Text"] = [[Age : waiting...]];
LMG2L["Age"]["Name"] = [[AccountAge]];
LMG2L["Age"]["LayoutOrder"] = 4;

local function formatNumber(value)
    local num = tonumber(value) or 0
    local formatted = tostring(math.floor(num))
    while true do  
        local k
        formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
        if k == 0 then break end
    end
    return formatted
end

local function CashLable(text)
    if LMG2L["Name_8"] then
        LMG2L["Name_8"]["Text"] = "Money : " .. formatNumber(text);
    end
end

local function SoldLable(text)
    if LMG2L["Sold_a"] then
        LMG2L["Sold_a"]["Text"] = "Sold : " .. formatNumber(text);
    end
end

local function AgeLable(num)
    if LMG2L["Age"] then
        LMG2L["Age"]["Text"] = "Age : " .. formatNumber(num) .. " Days";
    end
end


_G.IsBusy = false

local Plrs = game:GetService("Players")
local Plr = Plrs.LocalPlayer

local TweenService = game:GetService("TweenService")

local VIM = game:GetService("VirtualInputManager")
local VirtualUser = game:GetService("VirtualUser")
local Rep = game:GetService("ReplicatedStorage")
local Events = Rep:WaitForChild("Events", 10)
local Vehicles = Events and Events:WaitForChild("Vehicles", 10)

task.spawn(function()
    if typeof(getgc) == "function" then
        local success, functions = pcall(function() return getgc(true) end)
        local foundCount = 0
        if success and type(functions) == "table" then
            for _, value in pairs(functions) do
                if type(value) == "function" then
                    local ok, info = pcall(debug.getinfo, value)
                    if ok and info and info.name then
                        local funcName = string.lower(info.name)
                        if string.find(funcName, "protocol") or string.find(funcName, "band") or string.find(funcName, "ban") then
                            foundCount = foundCount + 1
                        end
                    end
                end
            end
        end
    end
end)

task.spawn(function()
    local lastMoney = -1
    local lastSold = -1
    local lastdays = -1
    while true do 
        task.wait(0.5) 
        pcall(function()
            if Plr:FindFirstChild("PlayerData") then
                local Money = Plr.PlayerData.Status.Money.Value
                local sold = Plr.PlayerData.Status.CarsSold.Value
                local days = Plr.AccountAge
                
                if Money ~= lastMoney then
                    lastMoney = Money
                    CashLable(Money)
                end
                
                if sold ~= lastSold then
                    lastSold = sold
                    SoldLable(sold)
                end
                
                if days ~= lastdays then
                  AgeLable(days)
                end
            end
        end)
    end
end)

task.spawn(function()
    if getgenv().abc and getgenv().abc.Codes and Events then
        local hud = Events:WaitForChild("HUD", 5)
        if hud then
            local useCode = hud:WaitForChild("UseCode", 5)
            if useCode then
                for i, v in pairs(getgenv().abc.Codes) do
                    pcall(function()
                        useCode:InvokeServer(v)
                        task.wait(0.5)
                    end)
                end
            end
        end
    end
end)

pcall(function()
    local Webhook = Rep:FindFirstChild("SmurklesLib") and Rep.SmurklesLib.Modules:FindFirstChild("DiscordWebhook")
    if Webhook then
        Webhook:Destroy()
    end
end)

Plr.Idled:Connect(function()
    pcall(function()
        VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        task.wait(0.2)
        VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end)
end)

_G.Part = true

local function tween(pos)
  _G.Part = false
  local char = Plr.Character
  local hrp = char and char:FindFirstChild("HumanoidRootPart")
  
  if not char or not hrp then return end
  
  local dis = (pos.Position - hrp.CFrame.Position).Magnitude
  local Info = TweenInfo.new(dis/250, Enum.EasingStyle.Linear)
  
  local Tween = TweenService:Create(hrp, Info, {CFrame = pos * CFrame.new(0, -10, 0)})
  
  hrp.Anchored = true
  
  Tween:Play()
  Tween.Completed:Wait()
  task.wait(0.5)
  _G.Part = true
  hrp.Anchored = false
end

local Part = Instance.new("Part")
Part.Name = "zxcvb"
Part.Parent = workspace
Part.Size = Vector3.new(80, 1, 80)
Part.Anchored = true
Part.CastShadow = false

task.spawn(function()
    while true do 
        task.wait()
        local char = Plr.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        
        if char then
            for _, ch in pairs(char:GetDescendants()) do
                if ch:IsA("BasePart") then 
                  ch.CanCollide = false
                end
            end
        end
        
        if hrp and _G.Part then
            Part.CFrame = hrp.CFrame * CFrame.new(0,-4,0)
            Part.CanCollide = true
        else
            Part.CanCollide = false
            Part.CFrame = CFrame.new(0, -9999, 0)
        end
    end
end)

local function DisibleSit()
    pcall(function()
        if Plr.Character and Plr.Character:FindFirstChild("Humanoid") then
            local hum = Plr.Character.Humanoid
            if hum.Sit then
                hum.SeatPart = nil
                hum.Jump = true
                hum.Sit = false
            end
            hum:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
        end
    end)
end

local function CheckOwner(objects)
    local result = false
    pcall(function()
        if objects and objects:GetAttribute("Owner") == Plr.Name then
            result = true
        end
    end)
    return result
end

local function LoadCar(Car, pos)
    pcall(function()
        if Car and Vehicles and Vehicles:FindFirstChild("RemoteLoad") then
            Vehicles["RemoteLoad"]:InvokeServer(Car, pos)
        end
    end)
end

local function RandomCarFix()
    local selectedCar = nil
    pcall(function()
        if not Plr:FindFirstChild("PlayerData") then return end
        local Garage = Plr.PlayerData.Garage
        local Carlist = {}
        for _, cars in pairs(Garage:GetChildren()) do
            pcall(function()
                if cars:FindFirstChild("Values") and cars.Values:FindFirstChild("Engine") then
                    local Wear = cars.Values.Engine.Wear
                    if Wear:FindFirstChild("Battery") and Wear:FindFirstChild("EngineBlock") then
                        if tonumber(Wear.Battery.Value) > 0 and tonumber(Wear.EngineBlock.Value) > 0 then
                            table.insert(Carlist, cars)
                        end
                    end
                end
            end)
        end
        if #Carlist > 0 then
            selectedCar = Carlist[math.random(1, #Carlist)]
        end
    end)
    return selectedCar
end

local function RandomCarSell()
    local selectedCar = nil
    pcall(function()
        if not Plr:FindFirstChild("PlayerData") then return end
        local Garage = Plr.PlayerData.Garage
        local Carlist = {}
        for _, cars in pairs(Garage:GetChildren()) do
            table.insert(Carlist, cars)
        end
        if #Carlist > 0 then
            selectedCar = Carlist[math.random(1, #Carlist)]
        end
    end)
    return selectedCar
end

local function BuyCar(maxBudget)
    local status = false
    pcall(function()
        local buyList = {}
        if not workspace:FindFirstChild("Vehicles") then return end
        
        for _, cars in pairs(workspace.Vehicles:GetChildren()) do
            pcall(function()
                if cars:GetAttribute("Junkyard") and not cars:GetAttribute("ExclusivePrice") then
                    local price = cars:GetAttribute("Price")
                    if price and price.Max <= maxBudget then
                        table.insert(buyList, cars)
                    end
                end
            end)
        end
        
        if #buyList == 0 then
            for _, cars in pairs(workspace.Vehicles:GetChildren()) do
                pcall(function()
                    if cars:GetAttribute("Junkyard") then
                        local price = cars:GetAttribute("Price")
                        if price and price.Max <= maxBudget then
                            table.insert(buyList, cars)
                        end
                    end
                end)
            end
        end
        
        if #buyList > 0 then
            table.sort(buyList, function(a, b)
                local priceA = a:GetAttribute("Price") and a:GetAttribute("Price").Max or 0
                local priceB = b:GetAttribute("Price") and b:GetAttribute("Price").Max or 0
                return priceA > priceB
            end)
            
            local car = buyList[1]
            
            if car and Plr.Character then
                tween(car:GetPivot() * CFrame.new(5, 5, 10))
                task.wait(.8)
                if car:FindFirstChild("ClickDetector") then
                    fireclickdetector(car["ClickDetector"])
                    task.wait(1)
                    if Plr.PlayerGui:FindFirstChild("HUD") and Plr.PlayerGui.HUD.Frames.Confirmation:FindFirstChild("Confirm") then
                        firesignal(Plr.PlayerGui.HUD.Frames.Confirmation.Confirm.Activated)
                        status = true
                    end
                end
            end
        end
    end)
    return status
end

local function GetMyCar()
    local foundCar = nil
    pcall(function()
        if not workspace:FindFirstChild("Vehicles") then return end
        for _, car in pairs(workspace.Vehicles:GetChildren()) do
            if CheckOwner(car) then
                foundCar = car
                break
            end
        end
    end)
    return foundCar
end

local function UnEquipAllPart()
    pcall(function()
        for i = 1, 3 do
            local myc = GetMyCar()
            if not myc then return end
            local EngineBay = myc:FindFirstChild("Body") and myc.Body:FindFirstChild("EngineBay")
            local PartsEvent = myc:FindFirstChild("PartsEvent")
            if EngineBay and PartsEvent then
                for _, parts in pairs(EngineBay:GetChildren()) do
                    if parts then
                        PartsEvent:FireServer("RemovePart", parts.Name)
                        task.wait(0.1)
                    end
                end
            end
            task.wait(0.3)
        end
    end)
end

local function EquipAllPart()
    pcall(function()
        for i = 1, 3 do
            local car = GetMyCar()
            if not car then return end
            local PartsEvent = car:FindFirstChild("PartsEvent")
            if PartsEvent and workspace:FindFirstChild("MoveableParts") then
                for _, MParts in pairs(workspace.MoveableParts:GetChildren()) do
                    if CheckOwner(MParts) and MParts:GetAttribute("Wear") == 0 then
                        MParts:PivotTo(car:GetPivot())
                        task.wait(0.2)
                        PartsEvent:FireServer("ReapplyPart", MParts)
                    end
                end
            end
            task.wait(0.5)
        end
    end)
end

local function destroypart()
    pcall(function()
        if not workspace:FindFirstChild("MoveableParts") then return end
        for _, MParts in pairs(workspace.MoveableParts:GetChildren()) do
            if CheckOwner(MParts) then
                MParts:Destroy()
            end
        end
    end)
end

local function BuyPart(name, modelname)
    pcall(function()
        if not workspace:FindFirstChild("PartsStore") then return end
        local partModel = workspace.PartsStore.SpareParts.Parts:FindFirstChild(modelname)
        if not partModel then return end
        for _, v in pairs(partModel:GetDescendants()) do
            if v.Name == name then
                local click = v:FindFirstChildOfClass("ClickDetector")
                if click then
                    fireclickdetector(click)
                    task.wait(0.5)
                    if Plr.PlayerGui:FindFirstChild("HUD") and Plr.PlayerGui.HUD.Frames.Confirmation.Confirm then
                        firesignal(Plr.PlayerGui.HUD.Frames.Confirmation.Confirm.Activated)
                    end
                    break
                end
            end
        end
    end)
end

local function PrintColor()
    pcall(function()
        local myCar = GetMyCar()
        if not myCar then return end
        local args = {
            "Car",
            myCar,
            Color3.new(1, 1, 1),
            "Normal"
        }
        if Vehicles and Vehicles:FindFirstChild("SetPaint") then
            Vehicles["SetPaint"]:FireServer(unpack(args))
        end
    end)
end

local function ClickRepair()
    pcall(function()
        local Stations = {"Station1","Station2","Station3"}
        local buildings = workspace.Map.FirstCity.Buildings:FindFirstChild("Pitstop(Small)")
        if not buildings then return end
        for _, st in pairs(Stations) do
            local station = buildings:FindFirstChild(st)
            if station then
                for _, v in pairs(station:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
                    end
                end
            end
        end
    end)
end

local function Repair()
    pcall(function()
        local locations = {
            ["Parking"] = CFrame.new(-1152, 5, -1546),
            ["Afkpos"] = CFrame.new(-1169, 5, -1543),
            ["BatteryCharger"] = CFrame.new(-1167, 5, -1574),
            ["GrindingMachine"] = {
                CFrame.new(-1168, 5, -1567),
                CFrame.new(-1168, 5, -1562),
                CFrame.new(-1167, 5, -1526),
                CFrame.new(-1168, 5, -1521),
                CFrame.new(-1106, 5, -1525),
                CFrame.new(-1106, 5, -1531)
            },
            ["Washer"] = {
                CFrame.new(-1168, 5, -1556),
                CFrame.new(-1168, 5, -1515),
                CFrame.new(-1106, 7, -1536)
            }
        }
        
        if not _G.grindIndex or _G.grindIndex > #locations.GrindingMachine then _G.grindIndex = 1 end
        if not _G.washerIndex or _G.washerIndex > #locations.Washer then _G.washerIndex = 1 end
        
        local car = RandomCarFix()
        if car and Plr.Character then
            tween(locations.Afkpos)
            LoadCar(car, locations.Parking)
            task.wait(2)
            UnEquipAllPart()
            task.wait(1)
        else
            if Plr.Character then
                tween(CFrame.new(-1932, 5, -792))
            end
            return
        end
        
        if workspace:FindFirstChild("MoveableParts") then
            for _, part in pairs(workspace.MoveableParts:GetChildren()) do
                pcall(function()
                    if CheckOwner(part) and part:GetAttribute("Wear") > 0 then
                        local Machine = part:GetAttribute("RepairMachine")
                        if Machine == "BatteryCharger" then
                            part:PivotTo(locations.BatteryCharger)
                            task.wait(.5)
                            ClickRepair()
                        elseif Machine == "GrindingMachine" then
                            local target = locations.GrindingMachine[_G.grindIndex]
                            part:PivotTo(target)
                            task.wait(.5)
                            ClickRepair()
            

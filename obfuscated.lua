--[[


getgenv().abc = {
  ["AutoFarm"] = true,
  ["Price"] = 17000,
  ["AutoBuyGarage"] = true,
  ["Codes"] = {
    "100M",
    "SAUSAGE",
    "WATERLAVA",
    "RENASCAPTURADO"
  }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/KUYKUBZ/Script/refs/heads/main/obfuscated.lua"))()

]]

setfpscap(10)

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
    LMG2L["Name_8"]["Text"] = "Money : " .. formatNumber(text);
end

local function SoldLable(text)
    LMG2L["Sold_a"]["Text"] = "Sold : " .. formatNumber(text);
end

_G.IsBusy = false

local Plrs = game:GetService("Players")
local Plr = Plrs.LocalPlayer
local VIM = game:GetService("VirtualInputManager")
local VirtualUser = game:GetService("VirtualUser")
local Rep = game:GetService("ReplicatedStorage")
local Events = Rep:FindFirstChild("Events")
local Vehicles = Events and Events:FindFirstChild("Vehicles")

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
      print(tostring(foundCount))
  end
end
end)

task.spawn(function()
    local lastMoney = -1
    local lastSold = -1
    while true do 
        task.wait(0.5) 
        pcall(function()
            local Money = Plr.PlayerData.Status.Money.Value
            local sold = Plr.PlayerData.Status.CarsSold.Value
            
            if Money ~= lastMoney then
                lastMoney = Money
                CashLable(Money)
            end
            
            if sold ~= lastSold then
                lastSold = sold
                SoldLable(sold)
            end
        end)
    end
end)

task.spawn(function()
    for i,v in pairs(getgenv().abc.Codes) do
        pcall(function()
            Events:WaitForChild("HUD"):WaitForChild("UseCode"):InvokeServer(v)
        end)
    end
end)

pcall(function()
  local Webhook = Rep.SmurklesLib.Modules:FindFirstChild("DiscordWebhook")
  if Webhook then
    Webhook:Destroy()
  end
end)

spawn(function()
  Plr.Idled:Connect(function()
    pcall(function()
      VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
      task.wait(0.5)
      VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end)
  end)
end)

local function holdkey(Key, sec)
  pcall(function()
    VIM:SendKeyEvent(true, Key, false, game)
    task.wait(sec)
    VIM:SendKeyEvent(false, Key, false, game)
  end)
end

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
    local Garage = Plr.PlayerData.Garage
    local Carlist = {}
    for _, cars in pairs(Garage:GetChildren()) do
      pcall(function()
        local Wear = cars.Values.Engine.Wear
        if tonumber(Wear.Battery.Value) > 0 and tonumber(Wear.EngineBlock.Value) > 0 then
          table.insert(Carlist, cars)
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
        Plr.Character:PivotTo(car:GetPivot() * CFrame.new(5, 0, 10))
        task.wait(2)
        if car:FindFirstChild("ClickDetector") then
          fireclickdetector(car["ClickDetector"])
          task.wait(2)
          if Plr.PlayerGui.HUD.Frames.Confirmation:FindFirstChild("Confirm") then
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
    for _, car in pairs(workspace.Vehicles:GetChildren()) do
      pcall(function()
        if CheckOwner(car) then
          foundCar = car
        end
      end)
      if foundCar then break end
    end
  end)
  return foundCar
end

local function UnEquipAllPart()
  pcall(function()
    for i = 1, 5 do
      pcall(function()
        local myc = GetMyCar()
        if not myc then return end
        local EngineBay = myc.Body["EngineBay"]
        local PartsEvent = myc["PartsEvent"]
        for _, parts in pairs(EngineBay:GetChildren()) do
          if parts then
            PartsEvent:FireServer("RemovePart", parts.Name)
          end
        end
      end)
      task.wait(0.2)
    end
  end)
end

local function EquipAllPart()
  pcall(function()
    for i = 1, 5 do
      pcall(function()
        local car = GetMyCar()
        if not car then return end
        local PartsEvent = car["PartsEvent"]
        for _, MParts in pairs(workspace.MoveableParts:GetChildren()) do
          if CheckOwner(MParts) and MParts:GetAttribute("Wear") == 0 then
            MParts:PivotTo(car:GetPivot())
            task.wait(.5)
            PartsEvent:FireServer("ReapplyPart", MParts)
          end
        end
      end)
    end
  end)
end

local function destroypart()
  pcall(function()
    for _, MParts in pairs(workspace.MoveableParts:GetChildren()) do
      pcall(function()
        if CheckOwner(MParts) then
          MParts:Destroy()
        end
      end)
    end
  end)
end

local function BuyPart(name, modelname)
  pcall(function()
    local partModel = workspace.PartsStore.SpareParts.Parts[modelname]
    for _, v in pairs(workspace.PartsStore.SpareParts.Parts:GetDescendants()) do
      if v.Name == name and v:IsDescendantOf(partModel) then
        local click = v:FindFirstChildOfClass("ClickDetector")
        if click then
          fireclickdetector(click)
          task.wait(.5)
          firesignal(Plr.PlayerGui.HUD.Frames.Confirmation.Confirm.Activated)
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
    for _, st in pairs(Stations) do
      pcall(function()
        local station = workspace.Map.FirstCity.Buildings["Pitstop(Small)"][st]
        for _, v in pairs(station:GetDescendants()) do
          if v:IsA("ClickDetector") then
            fireclickdetector(v)
          end
        end
      end)
    end
  end)
end

local function Repair()
  pcall(function()
    local locations = {
      ["Parking"] = CFrame.new(-1294, 66, -1467),
      ["Afkpos"] = CFrame.new(-1264, 66, -1486),
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
    
    if not _G.grindIndex then _G.grindIndex = 1 end
    if not _G.washerIndex then _G.washerIndex = 1 end
    
    local car = RandomCarFix()
    if car and Plr.Character then
      Plr.Character:PivotTo(locations.Afkpos)
      LoadCar(car, locations.Parking)
      task.wait(2)
      UnEquipAllPart()
      task.wait(2)
      UnEquipAllPart()
      task.wait(2)
    else
      if Plr.Character then
        Plr.Character:PivotTo(CFrame.new(-1932, 5, -792))
      end
      return
    end
    
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
            _G.grindIndex = _G.grindIndex + 1
            if _G.grindIndex > #locations.GrindingMachine then
                _G.grindIndex = 1
            end
          elseif Machine == "PartsWasher" then
            local target = locations.Washer[_G.washerIndex]
            part:PivotTo(target)
            task.wait(.5)
            ClickRepair()
            _G.washerIndex = _G.washerIndex + 1
            if _G.washerIndex > #locations.Washer then
                _G.washerIndex = 1
            end
          elseif not Machine then
              BuyPart(part:GetAttribute("PartName"), part:GetAttribute("Category"))
          end
        end
      end)
    end
    PrintColor()
    task.wait(20)
    EquipAllPart()
    task.wait(3)
    destroypart()
  end)
end

local function SellCar(num)
  pcall(function()
    for i = 1, num do 
      task.wait(3)
      if Plr.Character then
        Plr.Character:PivotTo(CFrame.new(-1932, 5, -792))
        local carToSell = RandomCarSell()
        if carToSell then
          LoadCar(carToSell, CFrame.new(-1914, 5, -788))
          task.wait(2)
          local prompt = workspace.Utils.SellCar.Prompt:FindFirstChildOfClass("ProximityPrompt")
          if prompt then
            fireproximityprompt(prompt)
            task.wait(1)
            if Plr.PlayerGui.HUD.Frames.Confirmation:FindFirstChild("Confirm") then
                firesignal(Plr.PlayerGui.HUD.Frames.Confirmation.Confirm.Activated)
            end
          end
        end
      end
    end
  end)
end

local function GetGarage()
  local slots = 3
  pcall(function()
    local mygarage = Plr.PlayerData.GarageModel
    if mygarage.Value == "Default" then
      slots = 3
    elseif mygarage.Value == "4Slots" then
      slots = 4
    elseif mygarage.Value == "6Slots" then
      slots = 6
    elseif mygarage.Value == "8Slots" then
      slots = 8
    elseif mygarage.Value == "10Slots" then
      slots = 10
    elseif mygarage.Value == "24Slots" then
      slots = 24
    end
  end)
  return slots
end

local function buygarage()
  pcall(function()
    if Plr.Character then
      Plr.Character:PivotTo(CFrame.new(-1550, 5, 16))
      local prox = workspace.Garages["8Slots"].Sign.Label.SignPrompt
      task.wait(2)
      if prox then
          fireproximityprompt(prox)
          task.wait(1)
          if Plr.PlayerGui.HUD.Frames.Confirmation:FindFirstChild("Confirm") then
              firesignal(Plr.PlayerGui.HUD.Frames.Confirmation.Confirm.Activated)
          end
      end
    end
  end)
end

local function auto()
  pcall(function()
    local garage = GetGarage()
    local g = Plr.PlayerData.Garage:GetChildren()
    local money = tonumber(Plr.PlayerData.Status.Money.Value) or 0
    local targetPrice = tonumber(getgenv().abc.Price) or 17000

    if getgenv().abc.AutoBuyGarage and money > 400000 and garage < 8 then
        buygarage()
      return
    end

    if money < targetPrice then
      if #g > 0 then
        SellCar(#g)
      else
        local success = BuyCar(money)
        if success then
          task.wait(5)
          Repair()
        else
          Plr.Character:PivotTo(CFrame.new(-1311, 8, -830))
          task.wait(2)
          firesignal(Plr.PlayerGui.HUD.Frames.Confirmation.Confirm.Activated)
          task.wait(65)
          Plr.Character:PivotTo(CFrame.new(-1311, 8, -888))
          BuyCar(1)
          task.wait(5)
          Repair()
        end
      end
      return
    end

    if money >= targetPrice then
      if #g >= garage then
        SellCar(#g)
      else
        local success = BuyCar(money)
        if success then
          task.wait(5)
          Repair()
        else
          task.wait(2)
        end
      end
      return
    end
  end)
end

task.spawn(function()
    while true do
        task.wait(4)
        if getgenv().abc and getgenv().abc.AutoFarm then
            if not _G.IsBusy then
                _G.IsBusy = true
                pcall(function()
                    DisibleSit()
                    auto()
                end)
                _G.IsBusy = false
            end
        end
    end
end)

return LMG2L, require;

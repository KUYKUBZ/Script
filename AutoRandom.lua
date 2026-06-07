local Plrs = game:GetService("Players")
local Plr = Plrs.localPlayer

local Rep = game:GetService("ReplicatedStorage")
local Events = Rep:FindFirstChild("Events")
local Vehicles = Events:FindFirstChild("Vehicles")

local function CheckOwner(part)
  if not part then return end
  if part:GetAttribute("Owner") == Plr.Name then
    return true
  end
end

local function LoadCar(Car, pos)
  pcall(function()
    if Car and Vehicles and Vehicles:FindFirstChild("RemoteLoad") then
      Vehicles["RemoteLoad"]:InvokeServer(Car, pos)
    end
  end)
end

local function RandomCar()
  local gr = Plr.PlayerData.Garage:GetChildren()
  if #gr == 0 then return nil end 
  local ran = gr[math.random(1, #gr)]
  return ran
end

local function GetMyCar()
  if not workspace:FindFirstChild("Vehicles") then return nil end
  for _, v in pairs(workspace.Vehicles:GetChildren()) do
    if CheckOwner(v) then
      return v
    end
  end
  return nil
end

local function SellCar()
  task.wait(1)
  if Plr.Character then
    Plr.Character:PivotTo(CFrame.new(-1932, 5, -792))
    task.wait(1)
    local utils = workspace:FindFirstChild("Utils")
    local sellCar = utils and utils:FindFirstChild("SellCar")
    local prompt = sellCar and sellCar.Prompt:FindFirstChildOfClass("ProximityPrompt")
    
    if prompt then
      fireproximityprompt(prompt)
      task.wait(2)
      local confFrame = Plr.PlayerGui.HUD.Frames.Confirmation
      if confFrame:FindFirstChild("Confirm") then
          firesignal(confFrame.Confirm.Activated)
      end
    end
  end
end

local function CheckSpawnChance()
  local rCar = RandomCar()
  if not rCar then return end
  
  LoadCar(rCar, CFrame.new(-1916, 4, -789))
  task.wait(1.5)
  
  local car = GetMyCar()
  if car and car:GetAttribute("SpawnChance") then 
    if car:GetAttribute("SpawnChance") > _G.SpawnChance or 1 then
      SellCar()
    else
      print("You got : " .. car:GetAttribute("Model"))
    end
  end
end

local function RandomAuctionAndFire()
  local utils = workspace:FindFirstChild("Utils")
  local auctionsFolder = utils and utils:FindFirstChild("Auctions")
  local garages = auctionsFolder and auctionsFolder:FindFirstChild("Garages")
  
  if not garages or #garages:GetChildren() == 0 then return end
  
  local garageList = garages:GetChildren()
  local randomGarage = garageList[math.random(1, #garageList)]
  
  if randomGarage and Plr.Character then
    pcall(function()
      Plr.Character:PivotTo(randomGarage.RootPos:GetPivot())
    end)
    task.wait(0.3)
    
    local targetPrompt = nil
    for _, desc in pairs(randomGarage:GetDescendants()) do
      if desc:IsA("ProximityPrompt") then
        if desc.Name == "MoneyBuy" or (desc.Parent and desc.Parent.Name == "MoneyBuy") then
          targetPrompt = desc
          break
        end
      end
    end
    
    if targetPrompt then
      fireproximityprompt(targetPrompt)
    end
  end
end

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/KUYKUBZ/TurtleCustom/refs/heads/main/TurtleUiLib.lua"))()
local window = library:Window("idk", "")

window:Box("SpawnChance", function(text, focuslost)
   if focuslost then
    _G.SpawnChance = tonumber(text)
   end
end)

window:Toggle("Auto Random", false, function(bool)
    _G.Random = bool
    if _G.Random then
      task.spawn(function()
        while _G.Random do
          RandomAuctionAndFire()
          task.wait(1.5)
          CheckSpawnChance()
          task.wait(3)
        end
      end)
    end
end)

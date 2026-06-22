repeat task.wait() until game:IsLoaded()

local plrs = game:GetService("Players")
local plr = plrs.localPlayer

local mapname = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

local KazGui = loadstring(game:HttpGet("https://raw.githubusercontent.com/ihkaz/KazGuiLibrary/main/dist/KazGui.min.lua"))()
local Window = KazGui:CreateWindow({
	Title = "Manager",
	Author = mapname,
	Icon = "chevrons-left-right-ellipsis",
	OpenButtonIcon = "chevrons-left-right-ellipsis",
	IconSize = 25,
	Theme = "Amethyst",
	Acrylic = true,
	AcrylicIntensity = 0.9,
	Size = UDim2.fromOffset(620, 360),
	MinSize = Vector2.new(260, 200),
	ToggleKey = Enum.KeyCode.RightShift,
	AutoSave = true,
	FileSaveName = "AraiHub.json",
})


local function CheckOwner(path)
  if path:GetAttribute("Owner") == plr.Name then
    return true
  end
end
local function CheckRepairMachine(path)
  if path:GetAttribute("RepairMachine") then
    return path:GetAttribute("RepairMachine")
  end
end

local function noti(t,c)
		Window:Notify({
	    Title = t,
	    Content = c,
	    Icon = "repeat",
	    Duration = 17,
    })
end

local function click()
  for _, v in pairs(workspace.Map.FirstCity.Buildings["Pitstop(Small)"].Station1:GetDescendants()) do
    if v:IsA("ClickDetector") then
      fireclickdetector(v)
    end
  end
    for _, v in pairs(workspace.Map.FirstCity.Buildings["Pitstop(Small)"].Station2:GetDescendants()) do
    if v:IsA("ClickDetector") then
      fireclickdetector(v)
    end
  end
  for _, v in pairs(workspace.Map.FirstCity.Buildings["Pitstop(Small)"].Station3:GetDescendants()) do
    if v:IsA("ClickDetector") then
      fireclickdetector(v)
    end
  end
end


local function ManualRepair()
for _,path in pairs(workspace.MoveableParts:GetChildren()) do
if CheckOwner(path) then

local locations = {
    ["Grind"] = {
        CFrame.new(-1167, 4, -1561),
        CFrame.new(-1168, 5, -1567),
        CFrame.new(-1167, 5, -1520),
        CFrame.new(-1167, 5, -1526),
        CFrame.new(-1107, 5, -1525),
        CFrame.new(-1106, 5, -1531)
    },
    ["Washer"] = {
        CFrame.new(-1168, 4, -1556),
        CFrame.new(-1106, 5, -1537),
        CFrame.new(-1168, 5, -1515)
    }
}

if not _G.grindIndex then _G.grindIndex = 1 end
if not _G.washerIndex then _G.washerIndex = 1 end

if path:GetAttribute("Wear") ~= 0 then

    if path:GetAttribute("RepairMachine") == "GrindingMachine" then
        local targetCFrame = locations.Grind[_G.grindIndex]
        
        path:PivotTo(targetCFrame)
        task.wait(.2)
        click()
        noti("Repair " .. path.Name, " Pls wait.")
        
        _G.grindIndex = _G.grindIndex + 1
        if _G.grindIndex > #locations.Grind then
            _G.grindIndex = 1
        end
        
    elseif path:GetAttribute("RepairMachine") == "PartsWasher" then
        local targetCFrame = locations.Washer[_G.washerIndex]
        
        path:PivotTo(targetCFrame)
        task.wait(.2)
        click()
        noti("Repair " .. path.Name, " Pls wait.")
        
        _G.washerIndex = _G.washerIndex + 1
        if _G.washerIndex > #locations.Washer then
            _G.washerIndex = 1
        end
        
    elseif path:GetAttribute("RepairMachine") == "BatteryCharger" then
        path:PivotTo(CFrame.new(-1167, 4, -1574))
        task.wait(.2)
        click()
        noti("Repair " .. path.Name, " Pls wait.")
    end

end

end
end
end

local function GetMyCar()
  for _,v in pairs(workspace.Vehicles:GetChildren()) do
    if CheckOwner(v) and v then
      return v
    end
  end
end

function ReapplyAllParts()
  for i=1,3 do
    for _, v in next, workspace.MoveableParts:GetChildren() do if v:GetAttribute("Owner") ==  plr.Name then local Car = GetMyCar() if Car and Car:FindFirstChild("PartsEvent") then Car.PartsEvent:FireServer("ReapplyPart", v) end end end
  end
end

function RemoveAllParts()
  for i=1,3 do
    local Car = GetMyCar()
    if not Car then return end
    local Body = Car:FindFirstChild("Body")
    if not Body then return end
    local EngineBay = Body:FindFirstChild("EngineBay")
    if not EngineBay then return end
    for _, v in next, EngineBay:GetChildren() do if Car:FindFirstChild("PartsEvent") then Car.PartsEvent:FireServer("RemovePart", v.Name) end
    end
  end
end

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

local Main = Window:Tab({Title = "Main",Icon = "house",})
local Status = Main:Section({
	Title = "Status",
	Icon = "chart-bar",
	WithIcon = true,
	Default = true,
})

local Money_Label = Status:Label({
	Title = "Money : " .. "wait.",
	Icon = "circle-dollar-sign",
	WithIcon = true,
	TextSize = 16,
	ColorKey = "Text",
	IconColorKey = "Accent",
})

task.spawn(function()
    local lastMoney = -1
    while true do
        task.wait(0.5)
        pcall(function()
            local Money = plr.PlayerData.Status.Money.Value
            if Money ~= lastMoney then
                lastMoney = Money
                Money_Label:SetTitle("Money : " .. formatNumber(Money))
            end
        end)
    end
end)

local Car_Label = Status:Label({
	Title = "Car : " .. "wait.",
	Icon = "car",
	WithIcon = true,
	TextSize = 16,
	ColorKey = "Text",
	IconColorKey = "Accent",
})
workspace.Vehicles.ChildAdded:Connect(function()
  Car_Label:SetTitle("Car : " .. GetMyCar():GetAttribute("Model") or "wait.")
end)
workspace.Vehicles.ChildRemoved:Connect(function()
  Car_Label:SetTitle("Car : " .. GetMyCar():GetAttribute("Model") or "wait.")
end)

local cars = {}
-- สร้างตารางชั่วคราวเพื่อเก็บตำแหน่ง Object จริงๆ ไว้คู่กับชื่อรถ
local carObjects = {} 

local function updateCarList()
    cars = {}
    carObjects = {}
    -- ค้นหารถในโรงรถของผู้เล่น
    local garage = plr:WaitForChild("PlayerData"):WaitForChild("Garage")
    for _, v in pairs(garage:GetChildren()) do
        -- เช็คเผื่อกรณีวัตถุไม่มี Model หรือ Value เพื่อไม่ให้สคริปต์เราพังเอง
        if v:FindFirstChild("Model") and v.Model.Value then
            local carName = v.Model.Value
            table.insert(cars, carName)
            carObjects[carName] = v -- บันทึก Object ตัวแม่ไว้โดยใช้ชื่อรถเป็น Key
        end
    end
    return cars
end

-- อัปเดตรายชื่อรถครั้งแรก
updateCarList()

local Car_Preset = Status:Dropdown({
	Title = "Select car",
	Values = cars,
	Default = nil,
	Search = true,
	Callback = function(value)
		_G.Car = value -- เก็บชื่อรถที่เลือกไว้ (เป็น String)
	end,
})

-- ระบบอัปเดตอัตโนมัติเมื่อรถในโรงรถเพิ่มขึ้นหรือลดลง
plr.PlayerData.Garage.ChildAdded:Connect(function()
    Car_Preset:Refresh(updateCarList())
end)
plr.PlayerData.Garage.ChildRemoved:Connect(function()
    Car_Preset:Refresh(updateCarList())
end)

local Status_Button = Status:Button({
	Title = "Spawn Car",
	Icon = "car",
	WithIcon = true,
	Locked = false,
	Callback = function()
        -- ตรวจสอบก่อนว่าผู้เล่นได้เลือกสรถในเมนูหรือยัง และรถคันนั้นมีอยู่จริงไหม
        if _G.Car and carObjects[_G.Car] then
            local args = {
                carObjects[_G.Car], --  ส่งวัตถุตัวจริงไปให้ Server (ไม่ใช่ nil อีกต่อไป)
                plr.Character:GetPivot()
            }
            -- ส่งข้อมูลไปที่ระบบเสกรถของเกม
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Vehicles"):WaitForChild("RemoteLoad"):InvokeServer(unpack(args))
        else
            warn("กรุณาเลือกเลือกรถในเมนูก่อนกดเสก!")
        end
	end,
})

local Repair = Main:Section({
	Title = "Manual Repair",
	Icon = "repeat",
	WithIcon = true,
	Default = true,
})
local ReapplyAllParts_Button = Repair:Button({
	Title = "ReapplyAllParts",
	Icon = "toolbox",
	WithIcon = true,
	Locked = false,
	Callback = function()
		ReapplyAllParts()
	end,
})

local RemovePart_Button = Repair:Button({
	Title = "RemovePart all",
	Icon = "toolbox",
	WithIcon = true,
	Locked = false,
	Callback = function()
		RemoveAllParts()
	end,
})
local Repair_Button = Repair:Button({
	Title = "Repair",
	Icon = "zap",
	WithIcon = true,
	Locked = false,
	Callback = function()
		ManualRepair()
	end,
})
local Repair_Button = Repair:Button({
	Title = "Car Print",
	Icon = "car",
	WithIcon = true,
	Locked = false,
	Callback = function()
    local args = {
    	"Car",
    	GetMyCar(),
    	Color3.new(1, 1, 1),
    	"Normal"
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Vehicles"):WaitForChild("SetPaint"):FireServer(unpack(args))
	end,
})
local Teleport_Button = Repair:Button({
	Title = "Repair pos",
	Icon = "zap",
	WithIcon = false,
	Locked = false,
	Callback = function()
		plr.Character:PivotTo(CFrame.new(-1081, 10, -1554))
	end,
})

local Teleport = Window:Tab({Title = "Teleport",Icon = "door-closed",})
local Teleport_Button = Teleport:Button({
	Title = "Sell",
	Icon = "zap",
	WithIcon = false,
	Locked = false,
	Callback = function()
		plr.Character:PivotTo(CFrame.new(-1886, 10, -790))
	end,
})
local Teleport_Button = Teleport:Button({
	Title = "Shop",
	Icon = "zap",
	WithIcon = false,
	Locked = false,
	Callback = function()
		plr.Character:PivotTo(CFrame.new(-1484, 10, -562))
	end,
})
local Teleport_Button = Teleport:Button({
	Title = "Junkyard",
	Icon = "zap",
	WithIcon = false,
	Locked = false,
	Callback = function()
		plr.Character:PivotTo(CFrame.new(-1813, 10, -405))
	end,
})
local Teleport_Button = Teleport:Button({
	Title = "Main Station",
	Icon = "zap",
	WithIcon = false,
	Locked = false,
	Callback = function()
		plr.Character:PivotTo(CFrame.new(-1043, 10, -366))
	end,
})

local Junkyard = Window:Tab({Title = "Junkyard",Icon = "car",})

local JunkyardTab_Button = {
  ["Exclusive"] = {}, -- ใช้คำว่า Exclusive
  ["Normal"] = {}
}

local function OldCar()
  -- ดึงข้อมูลรถมาเก็บไว้ในตัวแปรเพื่อความชัวร์และเป็นระเบียบ
  local allCars = workspace.Vehicles:GetChildren()

  ----------------------------------------------------
  -- ลูปที่ 1: สร้างปุ่ม Exclusive (ปุ่มทอง) ให้ขึ้นก่อน
  ----------------------------------------------------
  for _, car in pairs(allCars) do
    pcall(function()
      if car:GetAttribute("Junkyard") == true and not car:GetAttribute("Owner") then
        if car:GetAttribute("ExclusivePrice") then
          local ExclusivePrice = Junkyard:Button({
            Title = car:GetAttribute("ExclusivePrice") .. " Gold",
            Icon = "car",
            WithIcon = true,
            Locked = false,
            Callback = function()
              plr.Character:PivotTo(car:GetPivot())
            end,
          })
          -- ใส่เข้า Table ["Exclusive"] ให้ถูกตัว
          table.insert(JunkyardTab_Button.Exclusive, ExclusivePrice)
        end
      end
    end)
  end
  
  ----------------------------------------------------
  -- ลูปที่ 2: สร้างปุ่ม Normal (ปุ่มเงิน) ตามลงมา
  ----------------------------------------------------
  for _, car in pairs(allCars) do
    pcall(function()
      if car:GetAttribute("Junkyard") == true and not car:GetAttribute("Owner") then
        -- ตรวจสอบว่าต้องไม่มี ExclusivePrice ถึงจะเป็นรถธรรมดา
        if not car:GetAttribute("ExclusivePrice") then 
          local Price_Button = Junkyard:Button({
            Title = tostring(car:GetAttribute("Price")) .. " € : SpawnChance " .. tonumber(car:GetAttribute("SpawnChance")) .. "%",
            Icon = "car",
            WithIcon = true,
            Locked = false,
            Callback = function()
              plr.Character:PivotTo(car:GetPivot())
            end,
          })
          -- ใส่เข้า Table ["Normal"]
          table.insert(JunkyardTab_Button.Normal, Price_Button)
        end
      end
    end)
  end
end -- ปิดฟังก์ชัน OldCar ตรงนี้อย่างถูกต้อง

OldCar()

-- ฟังก์ชันสำหรับล้างปุ่มทั้งหมด (ทั้งปุ่มทองและปุ่มเงิน)
local function recars()
    -- 1. ลบปุ่ม Exclusive (แก้ชื่อจาก ExclusivePrice เป็น Exclusive ให้ตรงกับ Table ด้านบน)
    for _, button in pairs(JunkyardTab_Button.Exclusive) do
        if button and button.Destroy then
            pcall(function() button:Destroy() end)
        end
    end
    JunkyardTab_Button.Exclusive = {} -- ล้างค่าใน Table 

    -- 2. ลบปุ่ม Normal
    for _, button in pairs(JunkyardTab_Button.Normal) do
        if button and button.Destroy then
            pcall(function() button:Destroy() end)
        end
    end
    JunkyardTab_Button.Normal = {} -- ล้างค่าใน Table
end

local function refreshJunkyard()
    recars()
    OldCar()
end

-- เชื่อมต่อ Event เมื่อมีรถเข้าหรือออกจากโฟลเดอร์
workspace.Vehicles.ChildAdded:Connect(refreshJunkyard)
workspace.Vehicles.ChildRemoved:Connect(refreshJunkyard)

wait(5)
repeat wait() until game.Players.localPlayer.Character

spawn(function()
    for _,v in pairs(workspace:GetChildren()) do
        if v.Name == "JailScript" or v.Name == "Model" or v.Name == "TreeFolder" or v:IsA("MeshPart") or v:IsA("Part") then
            v:Destroy()
        end
    end
    for _,v in pairs(game:GetService("Lighting"):GetChildren()) do
        if v.Parent == game:GetService("Lighting") then
            v:Destroy()
        end
    end
end)

local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
local TeleportService = game:GetService("TeleportService")

spawn(function()
    wait(40)
    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, plr)
end)



local VirtualInputManager = game:GetService("VirtualInputManager")

function Input(Key)
    VirtualInputManager:SendKeyEvent(true, Key, false, game)
    VirtualInputManager:SendKeyEvent(false, Key, false, game)
end

if plr.Name == _G.Set.MainAcc and _G.Set.Farm then
    spawn(function()
        while wait() do
            if not plrs:FindFirstChild(_G.Set.HelpAcc) then
                TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, plr)
            end
        end
    end)
    if plr.Team ~= "Police" and not plr.Backpack:FindFirstChild("Handcuffs") then
        plr.Character:PivotTo(CFrame.new(770, 14, -22))
        wait(1)
        Input("E")
        wait(1)
        plr.Character.Humanoid:EquipTool(plr.Backpack:FindFirstChild("Handcuffs"))
    elseif not plr.Character:FindFirstChild("Handcuffs") and plr.Team == "Police" then
        plr.Character.Humanoid:EquipTool(plr.Backpack:FindFirstChild("Handcuffs"))
    end
    wait(1)
    spawn(function()
        while _G.Set.Farm do
            spawn(function()
                for _,Help in pairs(plrs:GetPlayers()) do
                    if Help:GetAttribute("IsWantedRunning") == true and Help:GetAttribute("IsWanted") > 0 then
                        plr.Character.HumanoidRootPart.CFrame = CFrame.new(665, -316, -786)
                        fireproximityprompt(Help.Character.HumanoidRootPart:FindFirstChild("Handcuff_Prompt"))
                        Help.Character.HumanoidRootPart:FindFirstChild("Handcuff_Prompt").HoldDuration = 0
                    end
                end
            end)
            task.wait()
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(665, -316, -786)
            plr.Character.Humanoid:EquipTool(plr.Backpack:FindFirstChild("Handcuffs"))
            task.wait()
        end
    end)
    spawn(function()
        while _G.Set.Farm do
            fireproximityprompt(plrs[_G.Set.HelpAcc].Character.HumanoidRootPart:FindFirstChild("Handcuff_Prompt"))
            Input("F")
            task.wait()
        end
    end)
elseif plr.Name == _G.Set.HelpAcc and _G.Set.Farm then
    spawn(function()
        while wait() do
            if not plrs:FindFirstChild(_G.Set.MainAcc) then
                TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, plr)
            end
        end
    end)
    spawn(function()
        while _G.Set.Farm do task.wait()
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(665, -316, -786)
            plr.Character.Humanoid:EquipTool(plr.Backpack:FindFirstChild("Punch"))
            plr.Character.Punch.MeleeEvent:FireServer()
        end
    end)
end


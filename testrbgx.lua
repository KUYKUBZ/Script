getgenv().enabled = true
getgenv().AinPos = nil

local function wallCheck(destination, ignore)
    local Origin = game:GetService("Workspace").CurrentCamera.CFrame.p
    local CheckRay = Ray.new(Origin, destination - Origin)
    local Hit = game:GetService("Workspace"):FindPartOnRayWithIgnoreList(CheckRay, ignore)
    return Hit == nil -- Returns true if no wall is hit
end

local function Getneartarget()
    local Maxist = 300
    local Target = nil
    
    for _, v in pairs(game:GetService("Players"):GetPlayers()) do
        if v.Name ~= game.Players.LocalPlayer.Name then
            if v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health >= 11 then
				if v:FindFirstChild("plrstats") and v.plrstats:FindFirstChild("PVP") and v.plrstats.PVP.Value == true then
					local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
					if distance < Maxist then
						Maxist = distance
						Target = v
					end
				end
            end
        end
    end
    
    if Target then
        local Ping = math.floor(game.Stats.Network.ServerStatsItem["Data Ping"]:GetValue())
        getgenv().AinPos = Ping / 1000 + 0.07
        
        -- Check if player has a tool with ShootEvent
        local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
        if tool and tool:FindFirstChild("ShootEvent") then
            local targetChar = Target.Character
            if targetChar and targetChar:FindFirstChild("HumanoidRootPart") then
                local targetPos = targetChar.HumanoidRootPart.Position
                local targetVel = targetChar.HumanoidRootPart.Velocity
                tool.ShootEvent:FireServer(targetPos + (targetVel * 0.165))
            end
        end
    end
end

-- Call the function
while enabled do task.wait()
	if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
		Getneartarget()
	end
end

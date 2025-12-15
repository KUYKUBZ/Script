local K4mpu5 = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Editor = Instance.new("Frame")
local Frame = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TextBox = Instance.new("TextBox")
local UIScale = Instance.new("UIScale")
local Run = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Clear = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Save = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Frame_2 = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local ScriptList = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local LoadButton = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local TextBox_2 = Instance.new("TextBox")
local UICorner_6 = Instance.new("UICorner")
local ImageButton = Instance.new("ImageButton")
local UICorner_7 = Instance.new("UICorner")

--Properties:

K4mpu5.Name = "K4mpu5"
K4mpu5.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
K4mpu5.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
K4mpu5.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = K4mpu5
Main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Main.BorderColor3 = Color3.fromRGB(60, 60, 60)
Main.BorderSizePixel = 2
Main.Position = UDim2.new(0.209760264, 0, 0.331027657, 0)
Main.Size = UDim2.new(0, 526, 0, 236)
Main.Active = true
Main.Draggable = true
Main.Selectable = true

UICorner.CornerRadius = UDim.new(0, 8)
UICorner.Parent = Main

Editor.Name = "Editor"
Editor.Parent = Main
Editor.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Editor.BorderColor3 = Color3.fromRGB(70, 70, 70)
Editor.BorderSizePixel = 1
Editor.Position = UDim2.new(0.203522503, 0, 0.0490196086, 0)
Editor.Size = UDim2.new(0, 397, 0, 182)

Frame.Parent = Editor
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame.BorderColor3 = Color3.fromRGB(50, 50, 50)
Frame.BorderSizePixel = 1
Frame.Position = UDim2.new(0.0176323187, 0, 0.0439560451, 0)
Frame.Size = UDim2.new(0, 381, 0, 167)

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ScrollingFrame.BorderColor3 = Color3.fromRGB(50, 50, 50)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Size = UDim2.new(0, 381, 0, 167)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 5, 0)
ScrollingFrame.HorizontalScrollBarInset = Enum.ScrollBarInset.Always
ScrollingFrame.ScrollBarThickness = 8
ScrollingFrame.VerticalScrollBarInset = Enum.ScrollBarInset.Always
ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 100)
ScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y

TextBox.Parent = ScrollingFrame
TextBox.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Size = UDim2.new(1, 0, 1, 0)
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.Code
TextBox.MultiLine = true
TextBox.ShowNativeInput = false
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(220, 220, 220)
TextBox.TextSize = 14.000
TextBox.TextWrapped = false
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top
TextBox.TextWrapped = false

UIScale.Parent = Main

Run.Name = "Run"
Run.Parent = Main
Run.BackgroundColor3 = Color3.fromRGB(60, 120, 60)
Run.BorderColor3 = Color3.fromRGB(0, 0, 0)
Run.BorderSizePixel = 0
Run.Position = UDim2.new(0.203522503, 0, 0.851694942, 0)
Run.Size = UDim2.new(0, 96, 0, 29)
Run.Font = Enum.Font.SourceSansSemibold
Run.Text = "Execute"
Run.TextColor3 = Color3.fromRGB(255, 255, 255)
Run.TextSize = 14.000

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = Run

Clear.Name = "Clear"
Clear.Parent = Main
Clear.BackgroundColor3 = Color3.fromRGB(120, 80, 80)
Clear.BorderColor3 = Color3.fromRGB(0, 0, 0)
Clear.BorderSizePixel = 0
Clear.Position = UDim2.new(0.407045007, 0, 0.851694942, 0)
Clear.Size = UDim2.new(0, 96, 0, 29)
Clear.Font = Enum.Font.SourceSansSemibold
Clear.Text = "Clear"
Clear.TextColor3 = Color3.fromRGB(255, 255, 255)
Clear.TextSize = 14.000

UICorner_3.CornerRadius = UDim.new(0, 5)
UICorner_3.Parent = Clear

Save.Name = "Save"
Save.Parent = Main
Save.BackgroundColor3 = Color3.fromRGB(80, 80, 140)
Save.BorderColor3 = Color3.fromRGB(0, 0, 0)
Save.BorderSizePixel = 0
Save.Position = UDim2.new(0.792976499, 0, 0.851694942, 0)
Save.Size = UDim2.new(0, 96, 0, 29)
Save.Font = Enum.Font.SourceSansSemibold
Save.Text = "Save"
Save.TextColor3 = Color3.fromRGB(255, 255, 255)
Save.TextSize = 14.000

UICorner_4.CornerRadius = UDim.new(0, 5)
UICorner_4.Parent = Save

Frame_2.Parent = Main
Frame_2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Frame_2.BorderColor3 = Color3.fromRGB(70, 70, 70)
Frame_2.BorderSizePixel = 1
Frame_2.Position = UDim2.new(0.0133079849, 0, 0.0466101058, 0)
Frame_2.Size = UDim2.new(0, 91, 0, 182)

UICorner_5.CornerRadius = UDim.new(0, 6)
UICorner_5.Parent = Frame_2

ScriptList.Name = "ScriptList"
ScriptList.Parent = Frame_2
ScriptList.Active = true
ScriptList.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
ScriptList.BorderSizePixel = 0
ScriptList.Position = UDim2.new(0, 0, 0.05, 0)
ScriptList.Size = UDim2.new(1, 0, 0.85, 0)
ScriptList.CanvasSize = UDim2.new(0, 0, 0, 0)
ScriptList.ScrollBarThickness = 6
ScriptList.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 100)

UIListLayout.Parent = ScriptList
UIListLayout.SortOrder = Enum.SortOrder.Name
UIListLayout.Padding = UDim.new(0, 5)

LoadButton.Name = "LoadButton"
LoadButton.Parent = Frame_2
LoadButton.BackgroundColor3 = Color3.fromRGB(80, 140, 80)
LoadButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
LoadButton.BorderSizePixel = 0
LoadButton.Position = UDim2.new(0.05, 0, 0.9, 0)
LoadButton.Size = UDim2.new(0, 80, 0, 20)
LoadButton.Font = Enum.Font.SourceSansSemibold
LoadButton.Text = "Refresh"
LoadButton.TextColor3 = Color3.fromRGB(255, 255, 255)
LoadButton.TextSize = 12.000

UICorner_8.CornerRadius = UDim.new(0, 5)
UICorner_8.Parent = LoadButton

TextBox_2.Parent = Main
TextBox_2.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TextBox_2.BorderColor3 = Color3.fromRGB(80, 80, 80)
TextBox_2.BorderSizePixel = 1
TextBox_2.Position = UDim2.new(0.608364999, 0, 0.872881353, 0)
TextBox_2.Size = UDim2.new(0, 91, 0, 19)
TextBox_2.Font = Enum.Font.SourceSans
TextBox_2.PlaceholderText = "Filename.lua"
TextBox_2.Text = ""
TextBox_2.TextColor3 = Color3.fromRGB(220, 220, 220)
TextBox_2.TextSize = 14.000

UICorner_6.CornerRadius = UDim.new(0, 4)
UICorner_6.Parent = TextBox_2

ImageButton.Parent = K4mpu5
ImageButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
ImageButton.BorderColor3 = Color3.fromRGB(70, 70, 70)
ImageButton.BorderSizePixel = 1
ImageButton.Position = UDim2.new(0.02, 0, 0.02, 0)
ImageButton.Size = UDim2.new(0, 50, 0, 50)
ImageButton.Image = "rbxassetid://7072717146"
ImageButton.ImageColor3 = Color3.fromRGB(120, 120, 255)

UICorner_7.CornerRadius = UDim.new(0, 8)
UICorner_7.Parent = ImageButton

-- Functions
local function makeDraggable(frame)
	local dragStart = nil
	local startPos = nil
	
	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragStart = nil
				end
			end)
		end
	end)
	
	frame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			if dragStart then
				local delta = input.Position - dragStart
				frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			end
		end
	end)
end

-- Check and create K4mpu5 folder (no example scripts)
local function setupK4mpu5Folder()
	if pcall(function() return makefolder end) then
		-- สร้างโฟลเดอร์ K4mpu5 ถ้ายังไม่มี
		if not isfolder("K4mpu5") then
			makefolder("K4mpu5")
			print("Created K4mpu5 folder")
		end
	end
end

-- Load script list function
local function loadScriptList()
	-- Clear existing buttons
	for _, child in pairs(ScriptList:GetChildren()) do
		if child:IsA("TextButton") then
			child:Destroy()
		end
	end
	
	-- Check if file functions are available
	if not pcall(function() return isfile end) or not pcall(function() return listfiles end) then
		local warning = Instance.new("TextLabel")
		warning.Name = "WarningLabel"
		warning.Parent = ScriptList
		warning.Size = UDim2.new(1, -10, 0, 40)
		warning.BackgroundTransparency = 1
		warning.Text = "File functions not available"
		warning.TextColor3 = Color3.fromRGB(255, 100, 100)
		warning.TextSize = 10
		warning.TextWrapped = true
		return
	end
	
	-- Setup K4mpu5 folder
	setupK4mpu5Folder()
	
	-- Get all .lua files from K4mpu5 folder
	local files = {}
	local success, result = pcall(function()
		return listfiles("K4mpu5")
	end)
	
	if success then
		for _, file in pairs(result) do
			if string.sub(file, -4) == ".lua" then
				table.insert(files, file)
			end
		end
		
		-- Sort files alphabetically
		table.sort(files)
		
		-- Create buttons for each file
		for _, filename in pairs(files) do
			local displayName = string.sub(filename, 9) -- ตัด "K4mpu5/" ออก
			
			local button = Instance.new("TextButton")
			button.Name = filename
			button.Parent = ScriptList
			button.Size = UDim2.new(1, -10, 0, 20)
			button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
			button.BorderSizePixel = 0
			button.Font = Enum.Font.SourceSans
			button.Text = displayName
			button.TextColor3 = Color3.fromRGB(220, 220, 220)
			button.TextSize = 10
			button.TextWrapped = true
			button.TextTruncate = Enum.TextTruncate.AtEnd
			
			local corner = Instance.new("UICorner")
			corner.CornerRadius = UDim.new(0, 3)
			corner.Parent = button
			
			-- Load script on click
			button.MouseButton1Click:Connect(function()
				local content = readfile(filename)
				TextBox.Text = content
				TextBox_2.Text = displayName
			end)
			
			-- Delete script on right click
			button.MouseButton2Click:Connect(function()
				delfile(filename)
				loadScriptList() -- Refresh list
			end)
		end
		
		-- Update canvas size
		ScriptList.CanvasSize = UDim2.new(0, 0, 0, #files * 25)
		
		-- Show message if no scripts
		if #files == 0 then
			local message = Instance.new("TextLabel")
			message.Name = "EmptyMessage"
			message.Parent = ScriptList
			message.Size = UDim2.new(1, -10, 0, 40)
			message.BackgroundTransparency = 1
			message.Text = "No scripts found"
			message.TextColor3 = Color3.fromRGB(150, 150, 150)
			message.TextSize = 12
			message.TextWrapped = true
		end
	end
end

-- Auto-save function
local autoSaveEnabled = false
local autoSaveTimer = nil
local function toggleAutoSave()
	autoSaveEnabled = not autoSaveEnabled
	
	if autoSaveEnabled then
		Save.Text = "Auto Save: ON"
		Save.BackgroundColor3 = Color3.fromRGB(60, 140, 60)
		
		-- Create auto-save timer
		if autoSaveTimer then
			autoSaveTimer:Disconnect()
		end
		
		autoSaveTimer = TextBox:GetPropertyChangedSignal("Text"):Connect(function()
			local filename = TextBox_2.Text
			if filename == "" then
				filename = "script.lua"
			end
			
			-- เซฟไฟล์ในโฟลเดอร์ K4mpu5
			local fullPath = "K4mpu5/" .. filename
			
			if pcall(function() return isfile end) then
				pcall(function()
					writefile(fullPath, TextBox.Text)
				end)
			end
		end)
	else
		Save.Text = "Save"
		Save.BackgroundColor3 = Color3.fromRGB(80, 80, 140)
		
		if autoSaveTimer then
			autoSaveTimer:Disconnect()
			autoSaveTimer = nil
		end
	end
end

-- Save function
local function saveScript()
	local filename = TextBox_2.Text
	if filename == "" then
		filename = "script.lua"
	end
	
	-- เซฟไฟล์ในโฟลเดอร์ K4mpu5
	local fullPath = "K4mpu5/" .. filename
	
	if pcall(function() return writefile end) then
		local success, err = pcall(function()
			writefile(fullPath, TextBox.Text)
		end)
		
		if success then
			print("Script saved to: " .. fullPath)
			loadScriptList() -- Refresh script list
		else
			warn("Save failed:", err)
		end
	else
		warn("writefile function not available")
	end
end

-- Make Main frame draggable
makeDraggable(Main)

-- Button functionality
Run.MouseButton1Click:Connect(function()
	local success, errorMessage = pcall(function()
		loadstring(TextBox.Text)()
	end)
	
	if not success then
		warn("Execution Error:", errorMessage)
	end
end)

Clear.MouseButton1Click:Connect(function()
	TextBox.Text = ""
end)

Save.MouseButton1Click:Connect(function()
	if autoSaveEnabled then
		toggleAutoSave()
	else
		saveScript()
	end
end)

-- Double click to toggle auto-save
Save.MouseButton2Click:Connect(toggleAutoSave)

-- Load script list on LoadButton click
LoadButton.MouseButton1Click:Connect(loadScriptList)

-- Toggle GUI with ImageButton
local guiVisible = true
ImageButton.MouseButton1Click:Connect(function()
	guiVisible = not guiVisible
	Main.Visible = guiVisible
end)

-- Setup and load script list on startup
local function initializeEditor()
	-- Setup K4mpu5 folder
	setupK4mpu5Folder()
	
	-- Load script list
	local success, err = pcall(loadScriptList)
	if not success then
		warn("Could not load script list:", err)
	end
	
	-- Auto-load last script if exists
	if pcall(function() return isfile end) then
		local function tryLoadLastScript()
			if isfile("K4mpu5/last_script.txt") then
				local lastScript = readfile("K4mpu5/last_script.txt")
				if isfile("K4mpu5/" .. lastScript) then
					local content = readfile("K4mpu5/" .. lastScript)
					TextBox.Text = content
					TextBox_2.Text = lastScript
				end
			end
		end
		
		pcall(tryLoadLastScript)
		
		-- Save current script name when changed
		TextBox_2:GetPropertyChangedSignal("Text"):Connect(function()
			if pcall(function() return writefile end) then
				pcall(function()
					writefile("K4mpu5/last_script.txt", TextBox_2.Text)
				end)
			end
		end)
	end
end

-- Initialize editor
initializeEditor()

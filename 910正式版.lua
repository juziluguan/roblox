local gs = function(service)
    return game:GetService(service)
end

local lp = gs("Players").LocalPlayer
local pos = lp.Character.HumanoidRootPart.CFrame + Vector3.new(0, 5, 0)
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
local Mouse = game:GetService('Players').LocalPlayer:GetMouse()
local CurrentSlot = game.Players.LocalPlayer:WaitForChild("CurrentSaveSlot").Value
local ScriptLoadOrSave = false
local CurrentlySavingOrLoading = game.Players.LocalPlayer:WaitForChild("CurrentlySavingOrLoading")
local mouse = game.Players.LocalPlayer:GetMouse()
local bai = {
    money = '0',
    axedupe = false,
    soltnumber = "1",
    waterwalk = false,
    awaysday = false,
    awaysdnight = false,
    nofog = false,
    axeflying = false,
    playernamedied = "",
    tptree = "",
    moneyaoumt = 1,
    moneytoplayername = "",
    donationRecipient = tostring(game.Players.LocalPlayer),
    autodropae = false,
    farAxeEquip = nil,
    cuttreeselect = "Generic",
    autofarm = false,
    PlankToBlueprint = nil,
    plankModel = nil,
    blueprintModel = nil,
    saymege = "",
    autosay = false,
    saymount = 1,
    sayfast = false,
    autofarm1 = false,
    bringamount = 1,
    bringtree = false,
    dxmz = "",
    color = 0,
    0,
    0,
    zlwjia = "",
    mtwjia = nil,
    zix = 1,
    zlz = 3,
    axeFling = nil,
    itemtoopen = "",
    openItem = nil,
    car = nil,
    load = false,
    autobuyamount = 1,
    autopick = false,
    loaddupeaxewaittime = 3.1,
    walkspeed = 16,
    JumpPower = 50,
    pickupaxeamount = 1,
    whthmose = false,
    itemset = nil,
    LoneCaveAxeDetection = nil,
    cuttree = false,
    LoneCaveCharacterAddedDetection = nil,
    LoneCaveDeathDetection = nil,
    lovecavecutcframe = nil,
    lovecavepast = nil,
    zlmt = nil,
    shuzhe = false,
    modwood = false,
    tchonmt = nil,
    cskais = false,
    dledetree = false,
    delereeset = nil,
    treecutset = nil,
    autobuyset = nil,
    wood = 7,
    cswjia = nil,
    boxOpenConnection = nil,
    autobuystop = flase,
    dropdown = {},
    autocsdx = nil,
    kuangxiu = nil,
    xzemuban = false,
    daiwp = false,
    stopcar = false
}
spawn(function()
    while task.wait() do
        game:GetService("Workspace").Stores.WoodRUs.Parts.PREMIUMSELECTION.SurfaceGui.TextLabel.Text = "此脚本缝合"
        game:GetService("Workspace").Stores.WoodRUs.Parts.PREMIUMSELECTION.SurfaceGui.TextLabel.TextColor3 =
            Color3.fromRGB(255, 0, 0)
        wait(1)
        game:GetService("Workspace").Stores.WoodRUs.Parts.PREMIUMSELECTION.SurfaceGui.TextLabel.Text =
            "永久免费"
        game:GetService("Workspace").Stores.WoodRUs.Parts.PREMIUMSELECTION.SurfaceGui.TextLabel.TextColor3 =
            Color3.fromRGB(255, 0, 0)
        wait(1)
        game:GetService("Workspace").Stores.WoodRUs.Parts.PREMIUMSELECTION.SurfaceGui.TextLabel.Text =
            "不喜勿喷"
        game:GetService("Workspace").Stores.WoodRUs.Parts.PREMIUMSELECTION.SurfaceGui.TextLabel.TextColor3 =
            Color3.fromRGB(255, 0, 0)
        wait(1)
        game:GetService("Workspace").Stores.WoodRUs.Parts.PREMIUMSELECTION.SurfaceGui.TextLabel.Text = "欢迎使用"
        game:GetService("Workspace").Stores.WoodRUs.Parts.PREMIUMSELECTION.SurfaceGui.TextLabel.TextColor3 =
            Color3.fromRGB(255, 0, 0)
        wait(1)
        game:GetService("Workspace").Stores.WoodRUs.Parts.PREMIUMSELECTION.SurfaceGui.TextLabel.Text = "谢谢"
        game:GetService("Workspace").Stores.WoodRUs.Parts.PREMIUMSELECTION.SurfaceGui.TextLabel.TextColor3 =
            Color3.fromRGB(255, 0, 0)
        wait(1)
    end
end)
game:GetService("Workspace").Stores.WoodRUs.Parts.OPEN24HOURS.SurfaceGui.TextLabel.Text = "作者: 咳咳";
game:GetService("Workspace").Stores.WoodRUs.Parts.OPEN24HOURS.SurfaceGui.TextLabel.TextColor3 =
    Color3.fromRGB(255, 0, 0)
game:GetService("Workspace").Stores.WoodRUs.Parts.SELLWOOD.SurfaceGui.TextLabel.Text = "作者: 橙子皮";
game:GetService("Workspace").Stores.WoodRUs.Parts.SELLWOOD.SurfaceGui.TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
game:GetService("Workspace").Stores.WoodRUs.Parts.WOODDROPOFF.SurfaceGui.TextLabel.Text = "感谢你用我这牛逼吊炸天的脚本";
game:GetService("Workspace").Stores.WoodRUs.Parts.WOODDROPOFF.SurfaceGui.TextLabel.TextColor3 =
    Color3.fromRGB(255, 0, 0)

local Player = game.Players.LocalPlayer

local function droptool(Position)
    local aQ = game.Players.LocalPlayer.Character;
    if aQ:FindFirstChildOfClass "Tool" then
        local y = aQ:FindFirstChildOfClass "Tool"
        if y:FindFirstChild("ToolName") then
            game.ReplicatedStorage.Interaction.ClientInteracted:FireServer(b, "Drop tool", Position or
                game.Players.LocalPlayer.Character.Head.CFrame)

        end
    end
    for a, b in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if b.Name == "Tool" and b.ClassName == "Tool" then
            game.ReplicatedStorage.Interaction.ClientInteracted:FireServer(b, "Drop tool", Position or
                game.Players.LocalPlayer.Character.Head.CFrame)
        end
    end
end
local function gplr(String)
    local Found = {}
    local strl = String:lower()
    if strl == "all" then
        for i, v in pairs(game:GetService("Players"):GetPlayers()) do
            table.insert(Found, v)
        end
    elseif strl == "others" then
        for i, v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name ~= lp.Name then
                table.insert(Found, v)
            end
        end
    elseif strl == "me" then
        for i, v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name == lp.Name then
                table.insert(Found, v)
            end
        end
    else
        for i, v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name:lower():sub(1, #String) == String:lower() then
                table.insert(Found, v)
            end
        end
    end
    return Found
end

function tools(plr)
    if plr:FindFirstChildOfClass("Backpack"):FindFirstChildOfClass('Tool') or
        plr.Character:FindFirstChildOfClass('Tool') then
        return true
    end
end
local a = game:GetService("Workspace")
local b = game:GetService("ReplicatedStorage")
local c = game:GetService("Players").LocalPlayer
DragModel = function(...)
    local d = {...}
    pcall(function()
        game:GetService("ReplicatedStorage")
        b.Interaction.ClientIsDragging:FireServer(d[1])
    end)
    d[1]:PivotTo(d[2])
    return d
end
DragModelmain = function(...)
    local d = {...}
    pcall(function()
        b.Interaction.ClientIsDragging:FireServer(d[1])
    end)
    d[1].Main.CFrame = d[2]
    return d
end
DragModel2 = function(...)
    local d = {...}
    pcall(function()
        b.Interaction.ClientIsDragging:FireServer(d[1])
        b.Interaction.ClientIsDragging:FireServer(d[1])
        b.Interaction.ClientIsDragging:FireServer(d[1])
        b.Interaction.ClientIsDragging:FireServer(d[1])

    end)
    d[1]:SetPrimaryPartCFrame(d[2])
    return d
end
DragModel1 = function(...)
    local d = {...}
    pcall(function()
        b.Interaction.ClientIsDragging:FireServer(d[1])
        b.Interaction.ClientIsDragging:FireServer(d[1])
    end)
    d[1]:MoveTo(d[2])
    d[1]:MoveTo(d[2])
    return d
end


repeat wait(.1) until lp.Character
local Character0 = lp.Character
Character0.Archivable = true
local IsInvis = false
local IsRunning = true
local InvisibleCharacter = Character0:Clone()
InvisibleCharacter.Parent = game:GetService'Lighting'
local Void = workspace.FallenPartsDestroyHeight
InvisibleCharacter.Name = ""
local CF

lp.CharacterAdded:Connect(function()
	if lp.Character == InvisibleCharacter then return end
	repeat wait(.1) until lp.Character:FindFirstChildWhichIsA'Humanoid'
	if IsRunning == false then
		IsInvis = false
		IsRunning = true
		Character0 = lp.Character
		Character0.Archivable = true
		InvisibleCharacter = Character0:Clone()
		InvisibleCharacter.Name = ""
		InvisibleCharacter:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
			Respawn()
		end)
		for i,v in pairs(InvisibleCharacter:GetDescendants())do
			if v:IsA("BasePart") then
				if v.Name == "HumanoidRootPart" then
					v.Transparency = 1
				else
					v.Transparency = .5
				end
			end
		end
	end
end)

local Fix = game:GetService("RunService").Stepped:Connect(function()
	pcall(function()
		local IsInteger
		if tostring(Void):find'-' then
			IsInteger = true
		else
			IsInteger = false
		end
		local Pos = lp.Character.HumanoidRootPart.Position
		local Pos_String = tostring(Pos)
		local Pos_Seperate = Pos_String:split(', ')
		local X = tonumber(Pos_Seperate[1])
		local Y = tonumber(Pos_Seperate[2])
		local Z = tonumber(Pos_Seperate[3])
		if IsInteger == true then
			if Y <= Void then
				Respawn()
			end
		elseif IsInteger == false then
			if Y >= Void then
				Respawn()
			end
		end
	end)
end)

for i,v in pairs(InvisibleCharacter:GetDescendants())do
	if v:IsA("BasePart") then
		if v.Name == "HumanoidRootPart" then
			v.Transparency = 1
		else
			v.Transparency = .5
		end
	end
end

function Respawn()
	IsRunning = false
	if IsInvis == true then
		pcall(function()
			lp.Character = Character0
			wait()
			Character0.Parent = workspace
			Character0:FindFirstChildWhichIsA'Humanoid':Destroy()
			IsInvis = false
			InvisibleCharacter.Parent = nil
		end)
	elseif IsInvis == false then
		pcall(function()
			lp.Character = Character0
			wait()
			Character0.Parent = workspace
			Character0:FindFirstChildWhichIsA'Humanoid':Destroy()
			IsInvis = false
		end)
	end
end

InvisibleCharacter:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
	Respawn()
end)

function FixCam()
	workspace.CurrentCamera.CameraSubject = lp.Character:FindFirstChildWhichIsA'Humanoid'
	workspace.CurrentCamera.CFrame = CF
end

function freezecam(arg)
	if arg == true then
		workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
	else
		workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
	end
end

function TurnInvisible()
	if IsInvis == true then return end
	IsInvis = true
	CF = workspace.CurrentCamera.CFrame
	local CF_1 = lp.Character.HumanoidRootPart.CFrame
	lp.Character.HumanoidRootPart.CFrame=CFrame.new(9e9, 9e9, 9e9)
	freezecam(true)
	wait(.6)
	freezecam(false)
	InvisibleCharacter = InvisibleCharacter
	Character0.Parent = game:GetService'Lighting'
	InvisibleCharacter.Parent = workspace
	InvisibleCharacter.HumanoidRootPart.CFrame = CF_1
	lp.Character = InvisibleCharacter
	FixCam()
	lp.Character.Animate.Disabled = true
	lp.Character.Animate.Disabled = false
end

function TurnVisible()
	if IsInvis == false then return end
	CF = workspace.CurrentCamera.CFrame
	Character0 = Character0
	local CF_1 = lp.Character.HumanoidRootPart.CFrame
	Character0.HumanoidRootPart.CFrame = CF_1
	InvisibleCharacter.Parent = game:GetService'Lighting'
	lp.Character = Character0
	Character0.Parent = workspace
	IsInvis = false
	FixCam()
	lp.Character.Animate.Disabled = true
	lp.Character.Animate.Disabled = false
end
for i, v in next, game:GetService("Players").LocalPlayer.PlayerGui:GetChildren() do
    if v.Name ~= "Chat" and v.Name ~= "TargetGui" then
        for i, v in next, v:GetDescendants() do
            local UC = Instance.new("UICorner", v)
            UC.CornerRadius = UDim.new(0, 5)
            if v.Name == "DropShadow" then
                v:Destroy()
            end
            if v:IsA("TextButton") or v:IsA("Frame") or v:IsA("ScrollingFrame") then
                v.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
            end
            if v:IsA("TextLabel") or v:IsA("TextButton") or v:IsA("TextBox") then
                v.TextColor3 = Color3.fromRGB(225, 225, 225)
                v.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
            end
        end
    end
end
notify = function(...)
    local GUI = game:GetService("CoreGui"):FindFirstChild("STX_Nofitication")
    if not GUI then
        local STX_Nofitication = Instance.new("ScreenGui")
        local STX_NofiticationUIListLayout = Instance.new("UIListLayout")
        STX_Nofitication.Name = "STX_Nofitication"
        STX_Nofitication.Parent = game.CoreGui
        STX_Nofitication.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        STX_Nofitication.ResetOnSpawn = false

        STX_NofiticationUIListLayout.Name = "STX_NofiticationUIListLayout"
        STX_NofiticationUIListLayout.Parent = STX_Nofitication
        STX_NofiticationUIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
        STX_NofiticationUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        STX_NofiticationUIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
    end
    local Args = {...}
    local Nofitication = {}
    local GUI = game:GetService("CoreGui"):FindFirstChild("STX_Nofitication")
    function Nofitication:Notify(nofdebug, middledebug, all)
        local SelectedType = string.lower(tostring(middledebug.Type))
        local ambientShadow = Instance.new("ImageLabel")
        local Window = Instance.new("Frame")
        local Outline_A = Instance.new("Frame")
        local WindowTitle = Instance.new("TextLabel")
        local WindowDescription = Instance.new("TextLabel")

        ambientShadow.Name = "ambientShadow"
        ambientShadow.Parent = GUI
        ambientShadow.AnchorPoint = Vector2.new(0.5, 0.5)
        ambientShadow.BackgroundTransparency = 1.000
        ambientShadow.BorderSizePixel = 0
        ambientShadow.Position = UDim2.new(0.91525954, 0, 0.936809778, 0)
        ambientShadow.Size = UDim2.new(0, 0, 0, 0)
        ambientShadow.Image = "rbxassetid://1316045217"
        ambientShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
        ambientShadow.ImageTransparency = 0.400
        ambientShadow.ScaleType = Enum.ScaleType.Slice
        ambientShadow.SliceCenter = Rect.new(10, 10, 118, 118)

        Window.Name = "Window"
        Window.Parent = ambientShadow
        Window.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        Window.BorderSizePixel = 0
        Window.Position = UDim2.new(0, 5, 0, 5)
        Window.Size = UDim2.new(0, 230, 0, 80)
        Window.ZIndex = 2

        Outline_A.Name = "Outline_A"
        Outline_A.Parent = Window
        Outline_A.BackgroundColor3 = middledebug.OutlineColor
        Outline_A.BorderSizePixel = 0
        Outline_A.Position = UDim2.new(0, 0, 0, 25)
        Outline_A.Size = UDim2.new(0, 230, 0, 2)
        Outline_A.ZIndex = 5

        WindowTitle.Name = "WindowTitle"
        WindowTitle.Parent = Window
        WindowTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        WindowTitle.BackgroundTransparency = 1.000
        WindowTitle.BorderColor3 = Color3.fromRGB(27, 42, 53)
        WindowTitle.BorderSizePixel = 0
        WindowTitle.Position = UDim2.new(0, 8, 0, 2)
        WindowTitle.Size = UDim2.new(0, 222, 0, 22)
        WindowTitle.ZIndex = 4
        WindowTitle.Font = Enum.Font.GothamSemibold
        WindowTitle.Text = nofdebug.Title
        WindowTitle.TextColor3 = Color3.fromRGB(220, 220, 220)
        WindowTitle.TextSize = 12.000
        WindowTitle.TextXAlignment = Enum.TextXAlignment.Left

        WindowDescription.Name = "WindowDescription"
        WindowDescription.Parent = Window
        WindowDescription.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        WindowDescription.BackgroundTransparency = 1.000
        WindowDescription.BorderColor3 = Color3.fromRGB(27, 42, 53)
        WindowDescription.BorderSizePixel = 0
        WindowDescription.Position = UDim2.new(0, 8, 0, 34)
        WindowDescription.Size = UDim2.new(0, 216, 0, 40)
        WindowDescription.ZIndex = 4
        WindowDescription.Font = Enum.Font.GothamSemibold
        WindowDescription.Text = nofdebug.Description
        WindowDescription.TextColor3 = Color3.fromRGB(180, 180, 180)
        WindowDescription.TextSize = 12.000
        WindowDescription.TextWrapped = true
        WindowDescription.TextXAlignment = Enum.TextXAlignment.Left
        WindowDescription.TextYAlignment = Enum.TextYAlignment.Top

        if SelectedType == "default" then
            local function ORBHB_fake_script()
                local script = Instance.new("LocalScript", ambientShadow)

                ambientShadow:TweenSize(UDim2.new(0, 240, 0, 90), "Out", "Linear", 0.2)
                Window.Size = UDim2.new(0, 230, 0, 80)
                Outline_A:TweenSize(UDim2.new(0, 0, 0, 2), "Out", "Linear", middledebug.Time)

                wait(middledebug.Time)

                ambientShadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)

                wait(0.2)
                ambientShadow:Destroy()
            end
            coroutine.wrap(ORBHB_fake_script)()
        elseif SelectedType == "image" then
            ambientShadow:TweenSize(UDim2.new(0, 240, 0, 90), "Out", "Linear", 0.2)
            Window.Size = UDim2.new(0, 230, 0, 80)
            WindowTitle.Position = UDim2.new(0, 24, 0, 2)
            local ImageButton = Instance.new("ImageButton")
            ImageButton.Parent = Window
            ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ImageButton.BackgroundTransparency = 1.000
            ImageButton.BorderSizePixel = 0
            ImageButton.Position = UDim2.new(0, 4, 0, 4)
            ImageButton.Size = UDim2.new(0, 18, 0, 18)
            ImageButton.ZIndex = 5
            ImageButton.AutoButtonColor = false
            ImageButton.Image = all.Image
            ImageButton.ImageColor3 = all.ImageColor

            local function ORBHB_fake_script()
                local script = Instance.new("LocalScript", ambientShadow)

                Outline_A:TweenSize(UDim2.new(0, 0, 0, 2), "Out", "Linear", middledebug.Time)

                wait(middledebug.Time)

                ambientShadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)

                wait(0.2)
                ambientShadow:Destroy()
            end
            coroutine.wrap(ORBHB_fake_script)()
        elseif SelectedType == "option" then
            ambientShadow:TweenSize(UDim2.new(0, 240, 0, 110), "Out", "Linear", 0.2)
            Window.Size = UDim2.new(0, 230, 0, 100)
            local Uncheck = Instance.new("ImageButton")
            local Check = Instance.new("ImageButton")

            Uncheck.Name = "Uncheck"
            Uncheck.Parent = Window
            Uncheck.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Uncheck.BackgroundTransparency = 1.000
            Uncheck.BorderSizePixel = 0
            Uncheck.Position = UDim2.new(0, 7, 0, 76)
            Uncheck.Size = UDim2.new(0, 18, 0, 18)
            Uncheck.ZIndex = 5
            Uncheck.AutoButtonColor = false
            Uncheck.Image = "http://www.roblox.com/asset/?id=6031094678"
            Uncheck.ImageColor3 = Color3.fromRGB(255, 84, 84)

            Check.Name = "Check"
            Check.Parent = Window
            Check.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Check.BackgroundTransparency = 1.000
            Check.BorderSizePixel = 0
            Check.Position = UDim2.new(0, 28, 0, 76)
            Check.Size = UDim2.new(0, 18, 0, 18)
            Check.ZIndex = 5
            Check.AutoButtonColor = false
            Check.Image = "http://www.roblox.com/asset/?id=6031094667"
            Check.ImageColor3 = Color3.fromRGB(83, 230, 50)

            local function ORBHB_fake_script()
                local script = Instance.new("LocalScript", ambientShadow)

                local Stilthere = true
                local function Unchecked()
                    pcall(function()
                        all.Callback(false)
                    end)
                    ambientShadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)

                    wait(0.2)
                    ambientShadow:Destroy()
                    Stilthere = false
                end
                local function Checked()
                    pcall(function()
                        all.Callback(true)
                    end)
                    ambientShadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)

                    wait(0.2)
                    ambientShadow:Destroy()
                    Stilthere = false
                end
                Uncheck.MouseButton1Click:Connect(Unchecked)
                Check.MouseButton1Click:Connect(Checked)

                Outline_A:TweenSize(UDim2.new(0, 0, 0, 2), "Out", "Linear", middledebug.Time)

                wait(middledebug.Time)

                if Stilthere == true then
                    ambientShadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)

                    wait(0.2)
                    ambientShadow:Destroy()
                end
            end
            coroutine.wrap(ORBHB_fake_script)()
        end
    end
    Nofitication:Notify({
        Title = Args[1],
        Description = Args[2]
    }, {
        OutlineColor = Color3.fromRGB(80, 80, 80),
        Time = Args[3],
        Type = "image"
    }, {
        Image = "http://www.roblox.com/asset/?id=6023426923",
        ImageColor = Color3.fromRGB(255, 84, 84)
    })
end
function getTieredAxe()
    return {
        ['Beesaxe'] = 13,
        ['AxeAmber'] = 12,
        ['ManyAxe'] = 15,
        ['BasicHatchet'] = 0,
        ['RustyAxe'] = -1,
        ['Axe1'] = 2,
        ['Axe2'] = 3,
        ['AxeAlphaTesters'] = 9,
        ['Rukiryaxe'] = 8,
        ['Axe3'] = 4,
        ['AxeBetaTesters'] = 10,
        ['FireAxe'] = 11,
        ['SilverAxe'] = 5,
        ['EndTimesAxe'] = 16,
        ['AxeChicken'] = 6,
        ['CandyCaneAxe'] = 1,
        ['AxeTwitter'] = 7,
        ['CandyCornAxe'] = 14
    }
end
function getAxeList()
    local aP = {}
    for J, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        table.insert(aP, v)
    end
    local aQ = game.Players.LocalPlayer.Character;
    if aQ:FindFirstChildOfClass "Tool" then
        table.insert(aP, aQ:FindFirstChildOfClass("Tool"))
    end
    return aP
end
function getWorstAxe()
    local aQ = game.Players.LocalPlayer.Character;
    if aQ:FindFirstChildOfClass "Tool" then
        local y = aQ:FindFirstChildOfClass "Tool"
        if y:FindFirstChild("ToolName") then
            return y
        end
    end
    local aR = 9999;
    local aS = nil;
    local aT = getTieredAxe()
    for J, v in pairs(getAxeList()) do
        if v:FindFirstChild("ToolName") then
            if aT[v.ToolName.Value] < aR then
                aS = v;
                aR = aT[v.ToolName.Value]
            end
        end
    end
    return aS
end

local function barkgetBestAxe()
    local aQ = game.Players.LocalPlayer.Character;
    if aQ:FindFirstChildOfClass "Tool" then
        local y = aQ:FindFirstChildOfClass "Tool"
        if y:FindFirstChild("ToolName") then
            return y
        end
    end
    local aU = -1;
    local aV = nil;
    local aT = getTieredAxe()
    for J, v in pairs(getAxeList()) do
        if v:FindFirstChild("ToolName") then
            if aT[v.ToolName.Value] > aU then
                aV = v;
                aU = aT[v.ToolName.Value]
            end
        end
    end
    return aV
end
function getHitPointsTbl()
    return {
        ['Beesaxe'] = 1.4,
        ['AxeAmber'] = 3.39,
        ['ManyAxe'] = 10.2,
        ['BasicHatchet'] = 0.2,
        ['Axe1'] = 0.55,
        ['Axe2'] = 0.93,
        ['AxeAlphaTesters'] = 1.5,
        ['Rukiryaxe'] = 1.68,
        ['Axe3'] = 1.45,
        ['AxeBetaTesters'] = 1.45,
        ['FireAxe'] = 0.6,
        ['SilverAxe'] = 1.6,
        ['EndTimesAxe'] = 1.58,
        ['AxeChicken'] = 0.9,
        ['CandyCaneAxe'] = 0,
        ['AxeTwitter'] = 1.65,
        ['CandyCornAxe'] = 1.75,
        ["CaveAxe"] = 0.4
    }
end
local function getMouseTarget()
    local b2 = game:GetService("UserInputService"):GetMouseLocation()
    return workspace:FindPartOnRayWithIgnoreList(Ray.new(workspace.CurrentCamera.CFrame.p,
        workspace.CurrentCamera:ViewportPointToRay(b2.x, b2.y, 0).Direction * 1000),
        game.Players.LocalPlayer.Character:GetDescendants())
end
local Pos = game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 5, 0)

local function table_foreach(table, callback)
    for i = 1, #table do
        callback(i, table[i])
    end
end

local function getCFrame(part)
    local part = part or (lp.Character and lp.Character.HumanoidRootPart)
    if not part then
        return
    end
    return part.CFrame
end

local function tp(pos)
    local pos = pos or lp:GetMouse().Hit + Vector3.new(0, lp.Character.HumanoidRootPart.Size.Y, 0)
    if typeof(pos) == "CFrame" then
        lp.Character:SetPrimaryPartCFrame(pos)
    elseif typeof(pos) == "Vector3" then
        lp.Character:MoveTo(pos)
    end
end

require = getgenv().require -- for pebc and sentinel

function get_axe_damage(tool, tree)
    -- totally not skidded from lumbsmasher
    local axe_class = require(game.ReplicatedStorage.AxeClasses['AxeClass_' .. tool.ToolName.Value])
    local axe_table = axe_class.new()
    if axe_table["SpecialTrees"] then
        if axe_table["SpecialTrees"][tree] then
            return axe_table["SpecialTrees"][tree].Damage
        else
            return axe_table.Damage
        end
    else
        return axe_table.Damage
    end
end
function get_axe_cooldown(tool)
    local success, return_value = pcall(function()
        local axe_class = require(game.ReplicatedStorage.AxeClasses['AxeClass_' .. tool.ToolName.Value])
        local axe_table = axe_class.new()

        return axe_table.SwingCooldown
    end)
    if success then
        return return_value
    else
        warn("ERROR WHILE REQUIRING MODULE: " .. return_value)
        return 1
    end
end
function get_axe_swingdelay(tool)
    local axe_cooldown = get_axe_cooldown(tool)
    local start = tick()
    game.ReplicatedStorage.TestPing:InvokeServer()
    local ping = (tick() - start) / 2
    local swing_delay = 0.65 * axe_cooldown - ping
    return swing_delay
end
local override_sawmill = nil
function getBestSawmill()
    local best = nil
    for i, v in pairs(game.Workspace.PlayerModels:GetChildren()) do
        if v:FindFirstChild("Owner") and v:FindFirstChild("ItemName") and v.Owner.Value == game.Players.LocalPlayer and
            v.ItemName.Value:sub(1, 7) == "Sawmill" then
            if not best then
                best = v
            else
                if #v.ItemName.Value > #best.ItemName.Value then
                    best = v
                elseif tonumber(v.ItemName.Value:sub(8, 8)) > tonumber(best.ItemName.Value:sub(8, 8)) then
                    best = v
                end
            end
        end
    end
    return best
end
function barkgetBestAxe2()
    -- changing it to my own method ~applebee#3071
    local pc = game.Players.LocalPlayer.Character
    local axe_damage
    local best_axe
    for i, v in pairs(getAxeList()) do
        if v.name == "Tool" then
            local damage = get_axe_damage(v, "Generic")
            if best_axe == nil then
                best_axe = v
                axe_damage = damage
            elseif get_axe_damage(best_axe, "Generic") < damage then
                best_axe = v
                axe_damage = damage
            end
        end
    end
    return best_axe
end
local function lumbsmasher_legitpaint(wood_class, blueprint, tpback)

    local old = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    local remote = game.ReplicatedStorage.PlaceStructure.ClientPlacedStructure
    local bp_type = blueprint.ItemName.Value

    local Player = game.Players.LocalPlayer
    local wood
    for i, v in pairs(game:GetService("ReplicatedStorage").ClientItemInfo:GetChildren()) do
        if v.Name == bp_type then
            for i, s in pairs(v:GetChildren()) do
                if s.Name == "WoodCost" then
                    wood = s.Value
                end
            end
        end

    end
    if lp.SuperBlueprint.Value then
        wood = 1
    end
    local required_wood = wood

    -- getting the axe
    local tool = barkgetBestAxe2()
    local sawmill = getBestSawmill()
    if tool == nil then
        notify("910", "请你装备斧头", 4)
        return
    end

    if wood_class == "LoneCave" then
        if tool.ToolName.Value ~= "EndTimesAxe" then
            notify("910", "请你装备末日斧头", 4)
            return
        end
    end

    local WoodSection
    local Min = 9e99

    for i, v in pairs(game.Workspace:GetChildren()) do
        if v.Name == 'TreeRegion' then
            for j, Tree in pairs(v:GetChildren()) do
                if Tree:FindFirstChild('Leaves') and Tree:FindFirstChild('WoodSection') and
                    Tree:FindFirstChild('TreeClass') then
                    if Tree:FindFirstChild('TreeClass').Value == wood_class then

                        for k, TreeSection in pairs(Tree:GetChildren()) do
                            if TreeSection.Name == 'WoodSection' then
                                local Size = TreeSection.Size.X * TreeSection.Size.Y * TreeSection.Size.Z
                                if (Size > required_wood) and (#TreeSection.ChildIDs:GetChildren() == 0) then
                                    if Min > TreeSection.Size.X then
                                        Min = TreeSection.Size.X
                                        WoodSection = TreeSection
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end

    if not WoodSection then
        notify("910", "没有找到树", 4)
        return
    end

    local Chopped = false
    local treecon = game.Workspace.LogModels.ChildAdded:connect(function(add)
        local Owner = add:WaitForChild('Owner')
        if (add.Owner.Value == Player) and (add.TreeClass.Value == wood_class) and add:FindFirstChild("WoodSection") then
            Chopped = add
            treecon:Disconnect()
        end
    end)

    local CutSize 

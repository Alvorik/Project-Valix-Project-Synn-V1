--[[

Welcome to Project Synn Development, This is a Roblox Script Hub for you're favorite games.

Credits :

notvixinity™#4845 / Script Hub Owner & Developer

Squirrel#0186 / Head Developer

____

Join our discord server | https://discord.gg/t7sXgFNmgq for Support, and more.

]]--

local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()

local win = lib:Window("Project Synn",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)

local Home = win:Tab("Home")

-- Values
getgenv().RainbowBlocks = true
getgenv().GalaxyBlocks = true
getgenv().DiamondBlocks = true
getgenv().SuperBlocks = true
getgenv().NormalBlocks = true

-- Selection Values
getgenv().ChosenOne = nil
getgenv().GiveChosenOne = true

-- Selection Functions 
local function GiveChosenOption()
    while getgenv().GiveChosenOne == true do
        print(getgenv().ChosenOne)
        game:GetService("ReplicatedStorage").Spawn(getgenv().ChosenOne):FireServer()
        wait(0.01)
    end
end

-- Manual Functions
local function galaxy()
    while getgenv().GalaxyBlocks == true do
        print("Giving Selected Block's Items")
        game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
        wait(0.01)
    end
end

local function rainbow()
    while getgenv().RainbowBlocks == true do
        print("Giving Selected Block's Items")
        game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
        wait(0.01)
    end
end

local function diamond()
    while getgenv().DiamondBlocks == true do
        print("Giving Selected Block's Items")
        game:GetService("ReplicatedStorage").SpawnDiamondBlock:FireServer()
        wait(0.01)
    end
end

local function super()
    while getgenv().SuperBlocks == true do
        print("Giving Selected Block's Items")
        game:GetService("ReplicatedStorage").SpawnSuperBlock:FireServer()
        wait(0.01)
    end
end

local function normal()
    while getgenv().NormalBlocks == true do
        print("Giving Selected Block's Items")
        game:GetService("ReplicatedStorage").SpawnLuckyBlock:FireServer()
        wait(0.01)
    end
end


--Dropdowns, Toggles and Buttons

Home:Dropdown("Block Selection", {"GalaxyBlock", "RainbowBlock", "DiamondBlock", "SuperBlock", "Lucky Blocks"}, function(Option)
    print(selection)
    getgenv().ChosenOne = Option
end)

Home:Toggle("Give Selected Item", false, function(value)
    getgenv().GiveChosenOne = value
    GiveChosenOption()
end)

Home:Button("Load Manual", function()
    lib:Notification("Notification", "Loading..", "Now Loading Manual Toggles")

    wait(.5)

    Home:Toggle("Rainbow Blocks",false, function(Value)
        getgenv().RainbowBlocks = Value
        rainbow()
    end)

    Home:Toggle("Galaxy Blocks",false, function(Value)
        getgenv().GalaxyBlocks = Value
        galaxy()
    end)

    Home:Toggle("Diamond Blocks",false, function(Value)
        getgenv().DiamondBlocks = Value
        diamond()
    end)

    Home:Toggle("Super Blocks",false, function(Value)
        getgenv().SuperBlocks = Value
        super()
    end)

    Home:Toggle("Lucky Blocks",false, function(Value)
        getgenv().NormalBlocks = Value
        normal()
    end)
end)

-- Visuals

local Visuals = win:Tab("Visuals")
local renderConnection

--[[

HitBoxes | Working

Updates : Fixed 5/27/2023

Improving Soon.


]]

local function Woow()
getgenv().HeadSize = 20
getgenv().Disabled = true

game:GetService('RunService').RenderStepped:Connect(function()
    if getgenv().Disabled == true then
        while getgenv().Disabled do
            for i, v in pairs(game:GetService('Players'):GetPlayers()) do
                if v ~= game:GetService('Players').LocalPlayer then
                    pcall(function()
                        local humanoidRootPart = v.Character and v.Character:FindFirstChild("HumanoidRootPart")
                        if humanoidRootPart then
                            humanoidRootPart.Size = Vector3.new(getgenv().HeadSize, getgenv().HeadSize, getgenv().HeadSize)
                            humanoidRootPart.Transparency = 0.7
                            humanoidRootPart.BrickColor = BrickColor.new("White")
                            humanoidRootPart.Material = Enum.Material.Neon
                            humanoidRootPart.CanCollide = false
                        end
                    end)
                end
            end
            wait()
        end
    end
end)
end


--[[

Name ESP | Working On Improving and Making

Started on :5/28/2023 2.33PM

]]

-- Name Esp Values



getgenv().NameEsp = true

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local BillboardGui = instance.new("BillboardGui")
billboard_gui.Active = true
billboard_gui.AlwaysOnTop = true
billboard_gui.ClipsDescendants = true
billboard_gui.LightInfluence = 1
billboard_gui.Size = UDim2.new(0, 150, 0, 50)
billboard_gui.StudsOffset = Vector3.new(0, 1, 0)
billboard_gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
billboard_gui.Parent = workspace

local text_label = instance.new("TextLabel")
text_label.Font = Enum.Font.Unknown
text_label.Text = "nameHolder"
text_label.TextColor3 = Color3.new(1, 1, 1)
text_label.TextScaled = true
text_label.TextSize = 14
text_label.TextStrokeTransparency = 0.5
text_label.TextWrapped = true
text_label.BackgroundColor3 = Color3.new(1, 1, 1)
text_label.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
taxt_label.Size = UDim2.new(1, 0, 1, 0)
text_label.Parent = billboard_gui

RunService.RenderStepped:Connect(function()
    for i, v in pairs(Players:GetChildren()) do
        if not v.Character.Head:FindFirstChild("nameESP") then
        local billboard_guiClone = billboard_gui:Clone()
        billboard_guiClone.Name = "nameESP"
        billboard_guiClone.Parent = v.Character:FindFirstChild("Head")
        end
    end
end)

Players.PlayerAdded:Connect(function(player)
    if not v.Character.Head:FindFirstChild("nameESP") then
        local billboard_guiClone.Name = "nameESP"
        billboard_guiClone.Parent = player.Character:FindFirstChild("Head")
    end
end)

if getgenv().NameEsp == true then
    while getgenv().NameEsp do

        
    end
end




Visuals:Toggle("HitBox", false, function(value)
    getgenv().Disabled = value
    Woow()
end)

local Player = win:Tab("Player")

Player:Slider("Walk Speed", 16, 600, 16, function(speed)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
end)

Player:Slider("Jump Power", 50, 600, 50, function(power)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = power
end)
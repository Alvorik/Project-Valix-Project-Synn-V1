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

getgenv().ChosenOne = nil

getgenv().SelectedCity = nil

getgenv().GiveChosenOne = true

getgenv().GiveGems = true

-- Functions

function ChosenOneThingi()
    while getgenv().GiveChosenOne == true do 
        local args = {
            [1] = "collectOrb",
            [2] = (getgenv().ChosenOne),
            [3] = (getgenv().ChosenCity)
        }
        
        game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
        wait(0.01)
    end
end

function gemshit()
    while getgenv().GiveGems == true do
        local args = {
            [1] = "collectOrb",
            [2] = "Gem",
            [3] = (getgenv().ChosenCity)
        }

        game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
        wait(0.01)
    end
end


-- Dropdowns and Toggles

Home:Dropdown("Select the Orb You'd like to Collect.",{"Red Orb","Orange Orb","Yellow Orb","Blue Orb"}, function(Option)
    getgenv().ChosenOne = Option
    print(Option)
end)

Home:Dropdown("Select the City you are Currently in.",{"City","Snow City","Magma City"}, function(Option)
    getgenv().ChosenCity = Option
    print(Option)
end)

Home:Toggle("Collect Orbs",false, function(Value)
    getgenv().GiveChosenOne = Value
    ChosenOneThingi()
end)

Home:Toggle("Give Gems",false, function(Value)
    getgenv().GiveGems = Value
    gemshit()
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
--[[

Welcome to Project Synn Development, This is a Roblox Script Hub for you're favorite games.

Credits :

notvixinity™#4845 / Script Hub Owner & Developer

Squirrel#0186 / Head Developer

____

Join our discord server | https://discord.gg/t7sXgFNmgq for Support, and more.

]]--


if game.Place == 537413528 then
    
end

    

elseif 


elseif 

    
    local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

    local Window = Rayfield:CreateWindow({
        Name = "Synn",
        LoadingTitle = "Synn Development",
        LoadingSubtitle = "Developer Version",
        ConfigurationSaving = {
        Enabled = true,
        FolderName = nil, -- Create a custom folder for your hub/game
        FileName = "ProjectSynn"
        },
        Discord = {
        Enabled = false,
        Invite = "t7sXgFNmgq", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
        RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
        KeySystem = false
        , -- Set this to true to use our key system
        KeySettings = {
        Title = "Project™",
        Subtitle = "Key System",
        Note = "Join the discord (discord.gg/t7sXgFNmgq)",
        FileName = "ProjectTMKey",
        SaveKey = true,
        GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
        Key = "Test"
    }
    })

    local Main = Window:CreateTab("Home") -- Title, Image
    local HomeSection = Main:CreateSection("Main Stuff")
    local Paragraph = Main:CreateParagraph({Title = "Synn", Content = "Project Synn 4.2 | Made by Developers"})

    --[[

    Assignments to work on for this 


    ]]




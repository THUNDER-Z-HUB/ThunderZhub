local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
if not Fluent then
    warn("Unable to load Fluent library")
    return
end

local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "THUNDER Z HUB" .. Fluent.Version,
    SubTitle = "by ThunderNorlis",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "Main" }),
    Shop = Window:AddTab({ Title = "Shop", Icon = "Shop" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local InterfaceSection = Tabs.Main:AddSection("Discord THUNDER Z HUB")

InterfaceSection:AddButton({
    Title = "Discord Link",
    Callback = function()
        setclipboard("https://discord.gg/f6Mge5f2w2")
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Copied!",
            Text = "Discord link copied to clipboard.",
            Duration = 3
        })
    end
})

local AutoCastToggle = Tabs.Main:AddToggle("AutoCast", { Title = "Auto Win", Default = false })

AutoCastToggle:OnChanged(function(state)
    _G.AutoCast = state
    if state then
        spawn(function()
            while _G.AutoCast do
                wait(0.30)
                local args = {
                    [1] = game:GetService("Players").LocalPlayer
                }

                game:GetService("ReplicatedStorage"):WaitForChild("Loader_Trophy"):FireServer(unpack(args))
            end
        end)
    end
end)

local AutoCastToggle = Tabs.Main:AddToggle("AutoCast", { Title = "Free money", Default = false })
    AutoCastToggle:OnChanged(function(state)
    _G.AutoCast = state
    if state then
        spawn(function()
            while _G.AutoCast do
                wait(0.30)
                local args = {
                    [1] = game:GetService("Players").LocalPlayer
                }

                game:GetService("ReplicatedStorage"):WaitForChild("SpinEvents"):WaitForChild("QuintoPremio"):FireServer(unpack(args))
            end
        end)
    end
end)

local AutoCastToggle = Tabs.Main:AddToggle("AutoCast", { Title = "Conjure a gift", Default = false })

AutoCastToggle:OnChanged(function(state)
    _G.AutoCast = state
    if state then
        spawn(function()
            while _G.AutoCast do
                wait(0.30)
                local args = {
                    [1] = game:GetService("Players").LocalPlayer
                }

                game:GetService("ReplicatedStorage"):WaitForChild("FreeGearEvent"):FireServer(unpack(args))
            end
        end)
    end
end)

Tabs.Main:AddButton({
    Title = "TP Complete",
    Description = "",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame = CFrame.new(882.424805, 36.5105095, -0.380279958, 0.156183496, 3.5054029e-08, -0.987728059, -2.20540013e-08, 1, 3.2002287e-08, 0.987728059, 1.67851262e-08, 0.156183496)
    end
})


-- Shop

    Tabs.Shop:AddParagraph({
        Title = "Buy Helicopter & Super Car",
        Content = ""
    })

    Tabs.Shop:AddButton({
        Title = "Buy Helicopter",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Buy Helicopter",
                Content = "",
                Buttons = {
                    {
                        Title = "Buy",
                        Callback = function()
                            local args = {
                                [1] = game:GetService("Players").LocalPlayer
                            }
                            
                            game:GetService("ReplicatedStorage"):WaitForChild("HeliEvents"):WaitForChild("remote1"):FireServer(unpack(args))
                        end
                    }
                }
            })
        end
    })

    Tabs.Shop:AddButton({
        Title = "Buy Super Car",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Buy Super Car",
                Content = "",
                Buttons = {
                    {
                        Title = "Buy",
                        Callback = function()
                            local args = {
                                [1] = game:GetService("Players").LocalPlayer
                            }
                            
                            game:GetService("ReplicatedStorage"):WaitForChild("Car_Prompt"):FireServer(unpack(args))
                        end
                    }
                }
            })
        end
    })

    Tabs.Shop:AddParagraph({
        Title = "Buy Helicopter & Super Car",
        Content = ""
    })


    Tabs.Shop:AddButton({
        Title = "Buy Diamond Carpet",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Buy Diamond Carpet",
                Content = "",
                Buttons = {
                    {
                        Title = "Buy",
                        Callback = function()
                            local args = {
                                [1] = game:GetService("Players").LocalPlayer
                            }
                            
                            game:GetService("ReplicatedStorage"):WaitForChild("CarpetsEvents"):WaitForChild("DiamondPrompt"):FireServer(unpack(args))
                        end
                    }
                }
            })
        end
    })

    Tabs.Shop:AddButton({
        Title = "Buy Gold Carpet",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Buy Gold Carpet",
                Content = "",
                Buttons = {
                    {
                        Title = "Buy",
                        Callback = function()
                            local args = {
                                [1] = game:GetService("Players").LocalPlayer
                            }
                            
                            game:GetService("ReplicatedStorage"):WaitForChild("CarpetsEvents"):WaitForChild("GoldenPrompt"):FireServer(unpack(args))
                        end
                    }
                }
            })
        end
    })

    Tabs.Shop:AddParagraph({
        Title = "Buy Speed Tools",
        Content = ""
    })

    Tabs.Shop:AddButton({
        Title = "Buy Fire Coil",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Buy Fire Coil",
                Content = "",
                Buttons = {
                    {
                        Title = "Buy",
                        Callback = function()
                            local args = {
                                [1] = game:GetService("Players").LocalPlayer
                            }
                            
                            game:GetService("ReplicatedStorage"):WaitForChild("Money_Coil_Remotes"):WaitForChild("Fire"):FireServer(unpack(args))
                        end
                    }
                }
            })
        end
    })

    Tabs.Shop:AddButton({
        Title = "Buy Gold Coil",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Buy Gold Coil",
                Content = "",
                Buttons = {
                    {
                        Title = "Buy",
                        Callback = function()
                            local args = {
                                [1] = game:GetService("Players").LocalPlayer
                            }
                            
                            game:GetService("ReplicatedStorage"):WaitForChild("Money_Coil_Remotes"):WaitForChild("CoilGold"):FireServer(unpack(args))
                        end
                    }
                }
            })
        end
    })


    Tabs.Shop:AddButton({
        Title = "Buy Void Coil",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Buy Void Coil",
                Content = "",
                Buttons = {
                    {
                        Title = "Buy",
                        Callback = function()
                            local args = {
                                [1] = game:GetService("Players").LocalPlayer
                            }
                            
                            game:GetService("ReplicatedStorage"):WaitForChild("Money_Coil_Remotes"):WaitForChild("Void"):FireServer(unpack(args))
                        end
                    }
                }
            })
        end
    })




-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- InterfaceManager (Allows you to have a interface managment system)

-- Hand the library over to our managers
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- You can add indexes of elements the save manager should ignore
SaveManager:SetIgnoreIndexes({})

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)


Window:SelectTab(1)

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
